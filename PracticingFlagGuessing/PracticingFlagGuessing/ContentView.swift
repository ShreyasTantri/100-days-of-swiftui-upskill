//
//  ContentView.swift
//  PracticingFlagGuessing
//
//  Created by CCS038 on 23/08/25.
//

/*
 Tiny practice to make it stick (5–10 mins each)
 P1: Wrap your whole game in a ZStack with a linear gradient background.
 P2: Make a FlagButton view that takes an image name and applies the capsule + shadow style. Use it in your ForEach.
 P3: Add an @State score and show it in the title bar (e.g., “Score: 3”).
 P4: Change the alert to show “Correct!” or “Wrong, that’s the flag of …”.
 P5: After alert dismissal, shuffle the countries and pick a new correct answer.
 */

//// P1: Wrap your whole game in a ZStack with a linear gradient background.
//import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//        ZStack {
//            LinearGradient(colors: [.green, .yellow], startPoint: .top, endPoint: .bottom)
//                .ignoresSafeArea()
//            
//            VStack {
//                Button {
//                    print("Hi")
//                } label: {
//                    Text("Action")
//                }
//            }
//        }
//    }
//}
//
//#Preview {
//    ContentView()
//}

// P3: Make a FlagButton view that takes an image name and applies the capsule + shadow style. Use it in your ForEach.
//P4: Change the alert to show “Correct!” or “Wrong, that’s the flag of …”.
import SwiftUI

struct ContentView: View {
//    @State private var = 0     Is this the way?? Add name please
    @State private var score = 0
    @State private var countries = ["Estonia", "France", "Germany"]
    @State private var correctAnswer = 1    // index of the correct flag
    @State private var showAlert = false
    @State private var alertTitle = ""
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.green, .yellow], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            Text("Score: \(score)")
                .font(.largeTitle)
                .padding()
            
            VStack {
                ForEach(0..<countries.count, id: \.self) { index in
                    Button {
                        flagTapped(index)
                    } label: {
                        Image(countries[index])
                            .clipShape(Capsule())
                            .shadow(radius: 5)
                    }
                    .alert(alertTitle, isPresented: $showAlert) {
                        // alert
                        Button("OK") {
                            // shuffle flags
                        }
                    }
                }
            }
        }
    }
    func flagTapped(_ index: Int) {
        if index == correctAnswer {
            score += 1
            alertTitle = "Correct"
        } else {
            alertTitle = "Wrong! That's the flag of \(countries[index])"
        }
        showAlert = true
    }
}

#Preview {
    ContentView()
}
