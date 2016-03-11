let vals = [52, 85, 19, 62, 134]

for v in vals {
    if v % 2 == 0 {
        print(">>")
    } else {
        print("<<")
    }
    print("Value is: \(v)")
}

for var i = 0; i < 4; i++ {
    print("\(i)")
}

for i in 0...3 {
    print("\(i)")
}


// Iterate over dictionary (~ python .iteritems())
var things = [
    "fruits": ["banana", "apple", "grape"],
    "vegetables": ["potato"],
]

for (kind, samples) in things {
    print("\(kind)")
    for sample in samples {
        print("  => \(sample)")
    }
}
