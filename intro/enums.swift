enum Numbers: Int {
    case One = 1
    // rest of these are assigned in order (after 1, defined above)
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    func describe() -> String {
        switch self {
        case .One:
            return "1 is special!"
        default:
            return String(self.rawValue)
        }
    }
}

let one = Numbers.One
let five = Numbers.Five
print(one.describe())
print(five.describe(), five.rawValue)

enum Foobar {
    // not necessary to have rawValue (but then self.rawValue cannot be used)
    case Bar, Baz, Far, Cat
    func describe() -> String {
        switch self {
        case .Bar:
            return "Bar"
        case .Baz:
            return "Baz"
        case .Far:
            return "Far"
        case .Cat:
            return "Meow"
        }
    }
}

let fbr = Foobar.Bar
print(fbr.describe())
