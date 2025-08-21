import Cocoa

//create an array of strings, then write some code that prints the number of items in the array and also the number of unique items in the array.

let games = ["Cricket","Football","Tennis","Cricket"]
print(games.count)

let uniqueGames = Set(games)
print(uniqueGames.count)
