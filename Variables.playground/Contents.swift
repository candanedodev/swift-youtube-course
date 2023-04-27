import Foundation

let myName = "Eduardo"
let yourName = "foo"

var names = [
    myName,
    yourName
]

let someNames = NSMutableArray(array: [
    "foo",
    "Bar"
])

names.append("Bar")
names.append("Baz")

print(names)

let oldArray  = NSMutableArray(
    array: [
        "foo",
        "Bar"
    ]
)

oldArray.add("Baz")
var newArray = oldArray
newArray.add("Qux")

oldArray
newArray


func changeTheArray(_ array: NSArray) {
    let copy = array as! NSMutableArray
    copy.add("Baz")
}

changeTheArray(someNames)

someNames
