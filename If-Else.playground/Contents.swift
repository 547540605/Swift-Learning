import Foundation

let myName = "Bale"
let myAge = 27
let yourName = "cjm"
let yourAge = 20

if myName == "Bale"{
    "Your name is \(myName)"
}else{
    "I guess it wrong"
}


if myAge == 27 || myName == "FOOOO"{
    "Either age is 20, name is Foo or both"
}else if myName == "Bale" || myAge == 27 {
    "It's too late to get in this clause"
}

if myName == "Bale"
    && myAge == 21
    && yourName == "Foo"
    || yourAge == 20{
    "My name is Bale and I'm 27 and your name is Foo...OR...you are 20"
}

if (myName == "Bale"
    && myAge == 21)
    && (yourName == "Foo"
    || yourAge == 20){
    "My name is Bale and I'm 27 and your name is Foo...OR...you are 20"
}else{
    "something go wrong"
}
