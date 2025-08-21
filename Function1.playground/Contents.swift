import Cocoa

/*
 Let’s try a more complex example: do two strings contain the same letters, regardless of their order? This function should accept two string parameters, and return true if their letters are the same – so, “abc” and “cab” should return true because they both contain one “a”, one “b”, and one “c”.

 You actually know enough to solve this problem yourself already, but you’ve learned so much already you’ve probably forgotten the one thing that makes this task so easy: if you call sorted() on any string, you get a new string back with all the letters in alphabetical order. So, if you do that for both strings, you can use == to compare them to see if their letters are the same.
 */

func areLettersIdentical(string1: String, string2: String) -> Bool {
    let first = string1.sorted()
    let second = string2.sorted()
    return first == second
}
