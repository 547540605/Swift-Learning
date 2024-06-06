import Foundation

let myName = "Bale"
let yourName = "yee"

var names = [
    myName,
    yourName,
]
names.append("bb")
names.append("cc")

let foo = "Foo"
var foo2 = foo

let moreNames = [
    "Foo",
    "Bar"
]
var copy = moreNames
copy.append("cjm")
moreNames
copy

let oldArray = NSMutableArray(
    array: [
        "Foo",
        "Bar"
    ]
)

oldArray.add("cjm")
var newArray = oldArray
newArray.add("bale")

/*
 NSMutableArray是class，是引用类型，哪怕oldArray用了let关键字也没用
 修改newArray一样会修改oldArray
 */
oldArray
newArray

let someNames = NSMutableArray(
    array: [
        "FOO",
        "Bar"
    ]
)

func changeTheArray(_ array: NSArray){
    let copy = array as! NSMutableArray
    copy.add("DONG")
}
changeTheArray(someNames)
someNames

/*
 说白了就是let只能限制structure，如果是拿来限制一个class的instance
 就限制不了，一样可以修改instance里面的东西
 */
