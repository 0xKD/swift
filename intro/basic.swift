// define constants with `let`
let myConstant = 10

// variables with `var`
var myVariable = 25
myVariable = 30

// template string (string interpolation) in swift
print("My constant is: \(myConstant)")
print("My sum is: \(myConstant + myVariable)")


// Integer bounds
let imax: (Any) = (Int8.max, Int16.max, Int32.max, Int64.max)
let umax: (Any) = (UInt8.max, UInt16.max, UInt32.max, UInt64.max)
print(imax); print(umax)

// Numeric literals
let binaryInt = 0b101
print(binaryInt)

let octInt = 0o777
print(octInt)

let hexInt = 0x2fa
print(hexInt)

let exp = 3.2_5e3, mil = 1_000_000  // integers, floats can contain underscores
print(exp); print(mil)

// No implicit overflows
let noMagic: UInt8 = -1  // will throw error
let cantOverflow = UInt16.max + 1  // so will this

// have to be explicit when converting
let num = UInt32(UInt16.max) + 1

/*
three + fpi will not work, but 3 + 0.14159 will
This is because numeric literals alone do not have a type,
it is only when they are evaluated by the compiler that the type is inferred
*/
let three = 3, fpi = 0.14159
let pi = Double(three) + fpi

let fp = 3.67
print(Int(fp))  // floating point values truncated
