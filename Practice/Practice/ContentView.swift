//  ContentView.swift
//  Practice
//
//  Created by CCS038 on 20/08/25.

/*
 Exercise 1
 Make a form with two sections:
 Section 1 → A TextField asking for your name.
 Section 2 → A Picker asking for your favorite color from a list (say, red, green, blue).

 Question for you: if the user changes the text in the TextField, what do we need to mark the property with so the UI updates?
 */

/*
 Exercise 2 – Using ForEach inside Picker

 Make a Picker that lets you select a day of the week, using ForEach(0..<7).
 Instead of showing numbers, display “Monday”, “Tuesday”, etc. (hint: you can store those names in an array).
 */
/*
 Exercise 4 – Build a mini calculator

 TextField → enter a number

 Picker → choose an operation (+, –, ×, ÷)

 Another TextField → enter second number

 Show the result in a Text below
 */

/*
 Exercise 1
 import SwiftUI
 
 struct ContentView: View {
 let colors = ["Red", "Green", "Blue"]
 
 @State private var name = ""
 @State private var selectedColor = "Red"
 
 var body: some View {
 Form {
 Section {
 TextField("Enter your name", text: $name)
 }
 Section {
 Picker("Favourite Color", selection: $selectedColor) {
 ForEach(colors, id: \.self) {
 Text($0)
 }
 }
 }
 Section {
 Text("Hello \(name)! Your favorite color is \(selectedColor).")
 }
 }
 }
 }
 
 #Preview {
 ContentView()
 }
 */

/*
//Exercise 2
import SwiftUI

struct ContentView: View {
    let weekdays = ["Sunday", "Monday", "Tueday", "Wedday", "Thursday", "Friday", "Satday"]

    @State private var name = ""
    @State private var selectedWeek = "Sunday"
    
    var body: some View {
        Form {
            Section {
                TextField("Enter your name", text: $name)
            }
            Section {
                Picker("Favourite Color", selection: $selectedWeek) {
                    ForEach(weekdays, id: \.self) {
                        Text($0)
                    }
                }
            }
            Section {
                Text("Hello \(name)! Your favorite weekday is \(selectedWeek).")
            }
        }
    }
}

#Preview {
    ContentView()
}
*/

/*
//Exercise 3
import SwiftUI

struct ContentView: View {
    let hobby = ["Reading", "Sports", "Coding"]
    @State private var age = ""
    @State private var selectedHobby = "Coding"

    var body: some View {
        Form {
            Section {
                TextField("Enter your age", text: $age)
            }
            Section {
                Picker("Choose your hobby", selection: $selectedHobby) {
                    ForEach(hobby, id: \.self) {
                        Text($0)
                    }
                }
            }
            Section {
                Text("You are \(age) years old and love \(selectedHobby).")
            }
        }
    }
}

#Preview {
    ContentView()
}
*/

/*
 Exercise 4 – Build a mini calculator
 TextField → enter a number

 Picker → choose an operation (+, –, ×, ÷)
 Another TextField → enter second number

 Show the result in a Text below
 

import SwiftUI

struct ContentView: View {
    let operations = ["+", "-", "*", "/"]
    
    @State private var number1 = ""
    @State private var number2 = ""
    @State private var selectedOperation = "+"
    
    // Computed property: does the math44
    var result: String {
        // Try converting inputs into numbers
        guard let n1 = Double(number1), let n2 = Double(number2) else {
            return "Enter valid numbers"
        }
        
        switch selectedOperation {
        case "+": return String(n1 + n2)
        case "-": return String(n1 - n2)
        case "*": return String(n1 * n2)
        case "/":
            return n2 == 0 ? "Division by 0!" : String(n1 / n2)
        default: return "Error"
        }
    }
    
    var body: some View {
        Form {
            Section {
                TextField("Enter first number", text: $number1)
                    .keyboardType(.decimalPad)
            }
            Section {
                Picker("Choose operation", selection: $selectedOperation) {
                    ForEach(operations, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.segmented)
            }
            Section {
                TextField("Enter second number", text: $number2)
                    .keyboardType(.decimalPad)
            }
            Section {
                Text("Result: \(result)")
            }
        }
    }
}

#Preview {
    ContentView()
}
*/

/*
 Challenge
 One of the best ways to learn is to write your own code as often as possible, so here are three ways you should try extending this app to make sure you fully understand what’s going on:

 Add a header to the third section, saying “Amount per person”
 Add another section showing the total amount for the check – i.e., the original amount plus tip value, without dividing by the number of people.
 Change the tip percentage picker to show a new screen rather than using a segmented control, and give it a wider range of options – everything from 0% to 100%. Tip: use the range 0..<101 for your range rather than a fixed array.
 */

//
//  ContentView.swift
//  WeSplit
//
//  Created by Paul Hudson on 07/10/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    @FocusState private var amountIsFocused: Bool

    let tipPercentages = [10, 15, 20, 25, 0]

    var totalPerPerson: Double {
        let peopleCount = Double(numberOfPeople + 2)
        let tipSelection = Double(tipPercentage)
        
        let tipValue = checkAmount / 100 * tipSelection
        let grandTotal = checkAmount + tipValue
        let amountPerPerson = grandTotal / peopleCount

        return amountPerPerson
    }
    
    var grandTotal: Double {
        let tipSelection = Double(tipPercentage)
        let tipValue = checkAmount / 100 * tipSelection
        return checkAmount + tipValue
    }

    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)

                    Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(2..<100) {
                            Text("\($0) people")
                        }
                    }
                }
                
                Section("How much do you want to tip?") {
                    Picker("Tip percentage", selection: $tipPercentage) {
                        ForEach(tipPercentages, id: \.self) {
                            Text($0, format: .percent)
                        }
                    }
                    .pickerStyle(.segmented)
                }

                Section("Amount per person") {
                    Text(totalPerPerson, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }
                Section("Total Amount") {
                    Text(grandTotal, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }
            }
            .navigationTitle("WeSplit")
            .toolbar {
                if amountIsFocused {
                    Button("Done") {
                        amountIsFocused = false
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
