import Foundation
// Closures are usually in-line arguments that you pass to other functions. You can define closures by assigning a function to
// a variable and then you can pass that variable around to other funtions. If you hear swift developers talking about closures
// they are simply talking about funtions that are in-line that dont have the func reserve word included.


//func add(
//    _ lhs: Int,
//    _ rhs: Int
//) -> Int {
//    lhs + rhs
//}

let add: (Int, Int) -> Int = { (lhs: Int, rhs: Int) -> Int in
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

// The more explicit we are with data types the compiler will execute faster
customAdd(
    20,
    30,
    using: { (lhs: Int, rhs: Int) -> Int in
        lhs + rhs
    }
)

// Also can be refactor to.
customAdd(
    20,
    30
) { (lhs: Int, rhs: Int) -> Int in
    lhs + rhs
}

// Even simpler. Downside: the compiler needs to infer the data types and this takes longer to compile.
customAdd(
    20,
    30
) { (lhs, rhs) in
    lhs + rhs
}

// Even more compound, this will take even more for the compiler to infer everything from it.
customAdd(20, 30) { $0 + $1 }

let ages = [30, 20, 19, 40]
ages.sorted(by: {(lhs: Int, rhs: Int) -> Bool in
    lhs > rhs
})
ages.sorted(by: >)

ages.sorted(by: {(lhs: Int, rhs: Int) -> Bool in
    lhs < rhs
})
ages.sorted(by: <)

// If we dont specify the external parameter name we can simply use it as when using a closure add10To(_:)
func add10To(_ value: Int) -> Int {
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
    on: 20) { (value) in
        value + 30
    }

doAddition(
    on: 20,
    using: add10To(_:)
)

doAddition(
    on: 20,
    using: add20To(_:)
)

// If we specify the external parameter name we have to use it as when using a closure add10To(value:)

func add10To2(value: Int) -> Int {
    value + 10
}

func add20To2(value: Int) -> Int {
    value + 20
}

doAddition(
    on: 20,
    using: add20To2(value:)
)

doAddition(
    on: 20,
    using: add10To2(value:)
)
