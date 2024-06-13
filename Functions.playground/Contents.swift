import Foundation

func noArgumentsAndNoReturnValue(){
    "I don't know what I'm doing"
}

noArgumentsAndNoReturnValue()

func plusTwo(value: Int){
    let newValue = value + 2
}

plusTwo(value: 20)

func newPlusTwo(value: Int) -> Int{
    value + 2
}
newPlusTwo(value: 30)

func customAdd(
    value1: Int,
    value2: Int
) -> Int{
    value1 + value2
}

let customAdded = customAdd(value1: 10, value2: 15)

func customMinus(
    _ lhs: Int,
    _ rhs: Int
) -> Int {
    lhs - rhs
}

let customSubtracted = customMinus(20, 10)

@discardableResult
func myCustomAdd(
    _ lhs: Int,
    _ rhs: Int
) -> Int {
    lhs + rhs
}
///在Swift中，@discardableResult属性是一个编译器指令，用于抑制编译器对函数返回值未被使用的警告。这个属性可以应用于函数、方法或属性。当你将这个属性应用于一个函数时，意味着调用这个函数的结果可以安全地被忽略，不需要被用作变量或其他操作。
///@discardableResult属性的主要用途是帮助开发者管理函数的返回值。在某些情况下，函数的返回值可能是有用的，但如果调用者不使用这个返回值，那么编译器可能会发出警告，提示这个返回值未被使用。通过使用@discardableResult属性，你可以明确表示你有意忽略这个返回值，并且编译器不会对此发出警告。

myCustomAdd(20, 30)

func doSomethingComplicated(with value: Int) -> Int {
    func mainLogic(value: Int) -> Int {
        value + 2
    }
    return mainLogic(value: value + 3)
}

doSomethingComplicated(with: 30)

func getFullName(
    firstName: String = "Christian",
    lastName: String = "Bale"
) -> String {
    "\(firstName) \(lastName)"
}

getFullName()
getFullName(firstName: "Michael")
getFullName(lastName: "J")
