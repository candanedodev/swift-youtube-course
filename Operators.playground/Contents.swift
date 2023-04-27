import Foundation

let myAge = 29
let yourAge = 27

if myAge > yourAge {
    "I'm older than you"
    
} else if myAge < yourAge {
    "I'm younger than you"
} else {
    "Oh, we are the same age"
}

let myMothersAge = myAge + 26
let doubleMyAge = myAge * 2
let myFathersAge = myAge + 52

/// Types of operators
/// 1. Unary prefix

let foo = !true /// ! prefix because is before the value

/// 2. Unary postfix

let name = Optional("Eduardo")
type(of: name)

let unaryPostFix = name!
type(of: unaryPostFix)

/// 3. binary infix

let resutl = 1 + 2
let names = "Foo" + " " + "Bar"

let age = 30

/// let message: String

/// if age >= 18 {
///    message = "you are an adult"
///} else {
///    message = "you are a minor"
///}

let message = age >= 18 ? "you are an adult" : "you are a minor"
