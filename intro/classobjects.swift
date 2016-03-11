class Shape {
    var sides: Int = 0
    var name: String

    func describe() -> String {
        return "A \(name) with \(sides) sides"
    }

    init(_ name: String) {
        self.name = name
    }

    deinit {
        print("Cleaning up \(name)…")
    }
}

var shape = Shape("foo")
print(shape.sides)
print(shape.describe())


class Square: Shape {
    var sideLength: Double {
        // property observer (to monitor changes)
        willSet {
            print("Run before setting sideLength to \(newValue)")
        }
        // observers do not go well with getter / setter (try adding getter / setter to this property)
        didSet {
            print("Run after settings sideLength to \(sideLength) (previously \(oldValue))")
        }
    }

    // base class property getter / setter can be overridden
    override var sides: Int {
        get { return 4 }
        // must have both getter & setter
        set {
            // `newValue` holds value that was set
        }
    }

    init(_ name: String, _ sideLength: Double) {
        // properties new in subclass must be defined before .init call
        self.sideLength = sideLength
        super.init(name)
        // properties defined in base may be modified only after super.init
        self.sides = 9  // doesn't matter what is set here, see get / set
    }

    // function signature must match base class
    override func describe() -> String {
        return "A \(name) with \(sides) sides of length \(sideLength) units"
    }

    // second name for method parameter
    // `extraText` used when calling, `text` used inside the method
    func describe(extraText text:String?) -> String {
        if let extras = text {
            return "\(extras)"
        } else {
            return "A \(name) with \(sides) sides of length \(sideLength) units"
        }
    }
}


var box = Square("square", 4.0)
print(box.describe(extraText: "Hello sir!"))
box.sideLength = 5.0
