import Foundation

let myAge = 22
let yourAge = 20

if myAge > yourAge{
    "I'm older than you"
}else if myAge < yourAge{
    "I'm younger than you"
}else{
    "We are the same age"
}

let myMotherAge = myAge + 30
let doubleMyAge = myAge * 2

/// 1.unary prefix
let foo = !true
/// 2.unary postfix
let name = Optional("Vandad")
type(of: name)
let unaryPostfix = name!
type(of: unaryPostfix)
/// 3.binary infix
let result = 1 + 2
let names = "Bale" + " " + "cjm"

let age = 30
let message = age >= 18
    ? "you are an adult"
    : "you are not yet an adult"

