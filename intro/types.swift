let label = "This is label!"
let width = 94

// explicit conversion always
let abc = label + String(width)
print(abc)

var fruitArr = ["orange", "mango", "apple"]
var fruitDict = [
    "orange": "orange",
    "mango": "yellow",
    "apple": "red",
]

// empty array (initializer syntax)
var emptyArr = [String]()
var emptyDict = [String: String]()
// var cannotInfer = [:]  // will not compile

var myDict = [
    "hello": ["world"],
    "key": ["value", "test"],
]
for (key, values) in myDict {
    print("Key: \(key)")
    for v in values {
        print(" => \(v)")
    }
}
// type information can be inferred (from previous declaration)
myDict = [:]

// Optionals
let name:String? = "hello"
print(name == nil)

let myName:String? = nil
if let tempName = myName {
    print("not nil!: \(tempName)")
}
