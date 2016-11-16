// T is a generic here
func repeater<T>(_ item: T, numTimes: Int) -> [T] {
    var res = [T]()
    for _ in 0..<numTimes {
        res.append(item)
    }
    return res
}

print(repeater("hello", numTimes: 5))
print(repeater(["a": 1, "b": 2], numTimes: 3))


// Sequence (renamed from SequenceType)
// `where` moved right before function body:
// `where` specifies a list of requirements, in this case, requiring
// the elements of T (sequence) to conform to the Equatable protocol
// (must provide an implementation of the equals (==) operator)
func merge<T: Sequence> (_ a: T, b: T) -> [Any] where T.Iterator.Element: Equatable {
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
