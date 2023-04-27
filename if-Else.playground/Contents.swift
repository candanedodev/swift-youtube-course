import Foundation

let myName = "Eduardo"
let yourName = "foo"

let myAge = 29
let yourAge = 27

if myName == "eduardo" {
    "your name is \(myName)"
} else {
    "Ok, I guess I dont know you"
}

if myName == "Eduardo" {
    "Now I guessed it correctly"
} else if myName == "Foo" {
    "Are you foo?"
} else {
    "Okay I give up"
}

if myName == "Eduardo" && myAge == 20 {
    "My name is Eduardo and my Age is 29"
} else if  myAge == 29  {
    "I only guessed the age"
} else {
    "I dont know what I'm doing"
}

if myAge == 29 || myName == "foo" {
    "Either name is Eduardo, Age is 29 or Both"
} else if  myName == "Eduardo" || myAge == 20  {
    "It's too late to get in this clause"
}

if myName == "Eduardo"
    && myAge == 28
    && yourName == "Foo"
    || yourAge == 27 {
    "My name is Eduardo and I'm 28 and your name is foo...OR... you are 19"
}
    

if (myName == "Eduardo"
    && myAge == 28)
    &&
    (yourName == "Foo"
     || yourAge == 27) {
    "My name is Eduardo and I'm 28...AND... your name is foo or you are 19"
} else {
    "that didnt work so good"
}
