// T is a generic here
func repeater<T>(item: T, numTimes: Int) -> [T] {
    var res = [T]()
    for _ in 0..<numTimes {
        res.append(item)
    }
    return res
}

print(repeater("hello", numTimes: 5))
print(repeater(["a": 1, "b": 2], numTimes: 3))


func merge<T: SequenceType where T.Generator.Element: Equatable> (a: T, b: T) -> [Any] {
    var m = [Any]()
    for item in a {
        m.append(item)
    }
    for item in b {
        m.append(item)
    }
    return m
}

let m = merge([1, 2, 3], b: [3, 4, 5])
print(m)
