import Cocoa

/// CLOSURES CONCEPT FULL PRACTICE

/*
//1
func movie() {
    print("Lakshya")
}

var hindiMovie = movie
hindiMovie()
*/

/*
//2 - Closure is a block of function that can be passed to a variable, or a function and many.
let sayHello = { print("Hi there!") }
sayHello()
*/

//3
/*
let sayHello = { (name: String) -> String in
    "Hi \(name)!"
}

let greeting = sayHello("Shreyas")
print(greeting)
*/

/*
 //4
 func getUserData(for id: Int) -> String {
     if id == 1989 {
         return "Taylor Swift"
     } else {
         return "Anonymous"
     }
 }

 let data: (Int) -> String = getUserData
 let user = data(1989)
 print(user)
 That starts off easily enough: it’s a function that accepts an integer and returns a string. But when we take a copy of the function the type of function doesn’t include the for external parameter name, so when the copy is called we use data(1989) rather than data(for: 1989).

 Cunningly this same rule applies to all closures – you might have noticed that I didn’t actually use the sayHello closure we wrote earlier, and that’s because I didn’t want to leave you questioning the lack of a parameter name at the call site. Let’s call it now:

 sayHello("Taylor")
 
 That uses no parameter name, just like when we copy functions. So, again: external parameter names only matter when we’re calling a function directly, not when we create a closure or when we take a copy of the function first.
 */

// 5. calls sorted() using a closure:
/*
 Here’s the tiniest nudge in the right direction—no full solution, just the skeleton you need:

 let captainFirst = team.sorted(by: { name1, name2 in
     // 1) if name1 == "Suzanne" → return true
     // 2) else if name2 == "Suzanne" → return false
     // 3) else → return name1 < name2
 })

 * Notice you put your two parameters **inside** the braces, then `in`, then your logic.
 * Swap out the comments for those three checks and you’re done!

 Give that a shot and let me know where it trips you up.

code:
let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]

var captainFirst = team.sorted(by: {name1, name2 in
    if name1 == "Suzanne" {
            return true
        } else if name2 == "Suzanne" {
            return false
        }

        return name1 < name2
})

print(captainFirst)
*/

/*
 6. Trailing closures:
 
let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]

var captainFirst = team.sorted {name1, name2 in
    if name1 == "Suzanne" {
            return true
        } else if name2 == "Suzanne" {
            return false
        }

        return name1 < name2
}

print(captainFirst)
*/

/*
// 7. Shorthand syntax
let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]

var captainFirst = team.sorted {
    if $0 == "Suzanne" {
            return true
        } else if $1 == "Suzanne" {
            return false
        }

        return $0 < $1
}

print(captainFirst)
*/

/*
 
 8.
 // Shorthand syntax
 let team = ["AK", "ZA", "NC", "CP", "RE"]
 let reverseTeam = team.sorted { $0 > $1 }
 print(reverseTeam)
 */

/*
// Eg 1: filter function
let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let tOnly = team.filter( { $0.hasPrefix("T") } )      // This is the trailing closure: { $0.hasPrefix("T") }
print(tOnly)                //["Tiffany", "Tasha"]

// Eg 2: map function
let uppercaseTeam = team.map( {$0.uppercased()} )
print(uppercaseTeam)        //["GLORIA", "SUZANNE", "PIPER", "TIFFANY", "TASHA"]

*/

/*
 9.
 
 */
func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()

    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }

    return numbers
}
