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
print(name == nil)  // nil is absence of a value of a certain type

let myName:String? = "Salt"  // try changing to nil
if let tempName = myName {
    print("not nil!: \(tempName)")
} else {
    print("nil is my name!")
}

let num = "123"
// Optional Binding: check for value & extract into constant, in single action
if let c = Int(num) {
    print("Converted str to int (\(c))")
} else {
    print("Cannot convert \(num) to int")
}

let d = Int(num)  // returns an optional
if d != nil {
    // if certain that optional has value, force unwrap it (using !)
    print("Converted value: \(d!)")
}

// Handle optionals with ?? operator
let defaultName = "John"
print("My name is: \(myName ?? defaultName)")


// Booleans
let t = true
let f = false

if t {
    print("Truthy!")
} else {
    print("Falsey!")
}

let i = 0
// if i {  // implicit conversion to / interpretation as bool not allowed
//     print("Won't work!")
// }

if i == 0 {  // result of comparisons is Bool, this is allowed
    print("Yes!")
}


// Tuples
let tup = (1, 2)
let (numA, numB) = tup  // parens around numA, numB required (unlike Python)
let (numC, _) = tup  // when you only need some value(s), use _ to ignore rest

let anotherTup = (foo: "foo", bar: "bar")  // ~ python's namedtuple
print(anotherTup.foo); print(anotherTup.bar)
