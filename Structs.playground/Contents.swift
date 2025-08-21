import Cocoa

//1.
//Where things get more interesting is when you want to have values that can change. For example, we could create an Employee struct that can take vacation as needed:


/*
 However, that won’t actually work – Swift will refuse to build the code.

 You see, if we create an employee as a constant using let, Swift makes the employee and all its data constant – we can call functions just fine, but those functions shouldn’t be allowed to change the struct’s data because we made it constant.

 As a result, Swift makes us take an extra step: any functions that only read data are fine as they are, but any that change data belonging to the struct must be marked with a special mutating keyword, like this:

 mutating func takeVacation(days: Int) {
 Now our code will build just fine, but Swift will stop us from calling takeVacation() from constant structs.
 */

struct Employee {
    let name: String
    var vacationRemaining: Int

    mutating func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I'm going on vacation!")
            print("Days remaining: \(vacationRemaining)")
        } else {
            print("Oops! There aren't enough days remaining.")
        }
    }
}



var archer = Employee(name: "Sterling Archer", vacationRemaining: 14)
archer.takeVacation(days: 5)
print(archer.vacationRemaining)

//But if you change var archer to let archer you’ll find Swift refuses to build your code again – we’re trying to call a mutating function on a constant struct, which isn’t allowed.

//let archer = Employee(name: "Sterling Archer", vacationRemaining: 14)
//archer.takeVacation(days: 5)                                        //Cannot use mutating member on immutable value: 'archer' is a 'let' constant
//print(archer.vacationRemaining)

/*
 Variables and constants that belong to structs are called properties.
 Functions that belong to structs are called methods.
 When we create a constant or variable out of a struct, we call that an instance – you might create a dozen unique instances of the Album struct, for example.
 When we create instances of structs we do so using an initializer like this: Album(title: "Wings", artist: "BTS", year: 2016).
 */

/*
 That last one might seem a bit odd at first, because we’re treating our struct like a function and passing in parameters. This is a little bit of what’s called syntactic sugar – Swift silently creates a special function inside the struct called init(), using all the properties of the struct as its parameters. It then automatically treats these two pieces of code as being the same:

 var archer1 = Employee(name: "Sterling Archer", vacationRemaining: 14)
 var archer2 = Employee.init(name: "Sterling Archer", vacationRemaining: 14)
 */

//var archer2 = Employee.init(name: "Sterling Archer", vacationRemaining: 14)
//archer.takeVacation(days: 5)
//print(archer.vacationRemaining)


//2.

/*
 Structs can have two kinds of property: a stored property is a variable or constant that holds a piece of data inside an instance of the struct, and a computed property calculates the value of the property dynamically every time it’s accessed. This means computed properties are a blend of both stored properties and functions: they are accessed like stored properties, but work like functions
 */

// ACCESS CONTROL

