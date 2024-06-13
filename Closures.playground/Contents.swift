import Foundation

///闭包（Closure）是Swift中一个非常重要的概念，它是一种可以捕获和存储其所在上下文中任意常量和变量值的自包含的功能块。
///闭包可以被赋值给变量、常量，也可以作为参数传递给函数，或者从函数中返回。
///闭包有以下几个关键特性：
///1.可以捕获上下文中的变量和常量： 闭包可以引用其定义的上下文中的变量和常量，即使在闭包被执行时这些变量和常量已经超出了其原有的作用域。
///2.可以从其定义的上下文中获取值： 闭包可以访问其定义的上下文中的变量和常量，即使这些变量和常量在闭包被定义后才被赋值。
///3.可以被赋值给变量和常量： 闭包可以被赋值给变量或者常量，然后在需要的时候执行这个闭包。
///4.可以作为参数传递给函数： 闭包可以作为函数的参数传递，这样函数就可以在执行时使用闭包提供的功能。
///5.可以从函数中返回： 函数可以返回一个闭包，这样函数的调用者就可以使用这个闭包。
///闭包在Swift中的使用非常广泛，特别是在函数式编程和异步编程中。它们提供了一种非常灵活的方式来封装和传递代码块。

func add2(_ lhs: Int, rhs: Int) -> Int{
    lhs + rhs
}

let add: (Int, Int) -> Int 
= { (lhs: Int, rhs: Int) -> Int in
    lhs + rhs
}

add(20, 30)

func customAdd(
    _ lhs: Int,
    _ rhs: Int,
    using function: (Int, Int) -> Int
) -> Int {
    function(lhs, rhs)
}

///第一种写法
customAdd(
    20,
    30,
    using: { (lhs: Int, rhs: Int) -> Int in
        lhs + rhs
    }
)

///在Swift中，尾随闭包是一种特殊的语法，它允许你将一个闭包表达式作为函数的最后一个参数传递。
///当你使用尾随闭包语法时，你不需要在函数参数列表中写出闭包的参数列表，因为它可以从闭包的函数体中推断出来。
///尾随闭包的主要优点是使代码更加简洁，因为它消除了闭包参数列表的冗余。

///第二种写法
customAdd(
    20,
    30){ (lhs: Int, rhs: Int) -> Int in
        lhs + rhs
    }

///第三种写法
customAdd(
    20,
    30
) { (lhs, rhs) in
    lhs + rhs
}

///第四种写法
customAdd(20, 30) { $0 + $1 }
let ages = [30, 20, 19, 40]

ages.sorted(by: {(lhs: Int, rhs: Int) -> Bool in
    lhs > rhs
})

ages.sorted(by: >)

func customAdd2(
    using function: (Int, Int) -> Int,
    _ lhs: Int,
    _ rhs: Int
) -> Int {
    function(lhs, rhs)
}

customAdd2(
    using: { (lhs, rhs) in
        lhs + rhs
    }, 20, 30)

customAdd2(
    using: { $0 + $1 },
    20,
    30
)

func add10To(value: Int) -> Int {
    value + 10
}
func add20To(_ value: Int) -> Int {
    value + 20
}

func doAddition(
    on value: Int,
    using function: (Int) -> Int
) -> Int {
    function(value)
}

doAddition(
    on: 20
) {
    (value) in
    value + 30
}

doAddition(
    on: 20,
    using: add10To(value: )
)
doAddition(
    on: 20,
    using: add20To(_:))

///在Swift中，函数参数的命名通常是可选的，如果你不想为参数提供一个外部参数名，你可以使用下划线（_）作为占位符。
///这个下划线是一个约定俗成的做法，表示这个参数在函数体内部不会被使用，它只是为了满足函数签名的要求。
///在add20To函数中，_是一个占位符，表示这个函数有一个参数，但是我们并不关心这个参数的名字，只关心它的类型。
///这个参数的名字在函数体内部是不可访问的，因为我们没有给它提供一个外部参数名
