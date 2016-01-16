enum Number: Int {
    case One = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
}

// Similar to classes, but a copy is passed around (as opposed to reference, for a class)
struct TwoPoint {
    var pointOne: Number
    var pointTwo: Number

    func describe() -> String {
        return "\(pointOne).\(pointTwo.rawValue)"
    }
}

let tp = TwoPoint(pointOne: .One, pointTwo: .Four)
print(tp.describe())
