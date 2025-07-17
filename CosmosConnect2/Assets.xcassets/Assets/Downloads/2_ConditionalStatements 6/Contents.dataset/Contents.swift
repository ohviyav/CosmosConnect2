import UIKit

var greeting = "Hello, playground"

//Declare the variable firstName and age
var firstName = "Ohviya"
var age = 17

//print to the console
print(firstName)

//Is our name Karlie?
print(firstName == "Karlie")

//Is this my age?
print(age == 99)
print(firstName == "Ohviya")

//Is my age less than 5?
print(age > 5)

//Checking multiple conditions
//Create a variable named score
var score = 2

//Did the student pass or fail?
if score >= 70 {
    print("Nice job! You did it!")
} else {
    print("study more...")
}

//challenge
var myNumber = 5
if ( myNumber > 0) {
    print("Your number is positive")
} else {
    print("Your number is negative")
}


//spicy challenge
var secretNumber = 7;
var guess = 7;
if (secretNumber == guess ) {
    print("Congratulations! You guessed it!")
} else {
    print("Try again!")
}
