/*
 You already know enough to start writing your first useful code, albeit fairly simple: we’re going to convert temperatures from Celsius to Fahrenheit.

 Your goal is to write a Swift playground that:

 Creates a constant holding any temperature in Celsius.
 Converts it to Fahrenheit by multiplying by 9, dividing by 5, then adding 32.
 Prints the result for the user, showing both the Celsius and Fahrenheit values.
 */

import Cocoa

let temp_in_Celsius = 25.0
let temp_in_Fahrenheit = (temp_in_Celsius * 9)/5 + 32

print("Temperature in Celsius = \(temp_in_Celsius) °C \n Temperature in Fahrenheit = \(temp_in_Fahrenheit) °F")


