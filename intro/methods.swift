// Instance methods and Type methods


class Robot {
    var name: String
    static let isSelfAware = false

    // speak is an instance method, acting on a particular instance of Robot
    func speak() {
        print("Hello! My name is \(self.name)")
    }

    /*
     type methods act on the type (Robot) itself, can access other type methods, properties
     instance methods or properties cannot be accessed
     ~Similar to Java's class methods?
    */
    static func destroyHuman() {
        if self.isSelfAware {
            // Changed from self.dynamicType in Swift 3
            print("\(type(of: self)) destroys Humans!")
        } else {
            print("Nope…")
        }
    }

    init(name: String) {
        self.name = name
    }
}


// CustomStringConvertible is a protocol that enables printing via `description`
struct Point: CustomStringConvertible {
    var x: Double
    var y: Double

    /*
     for value types (struct, enum), properties cannot be modified from within
     its instance method (default behaviour)
     on adding the `mutating` keyword, changed properties can be persisted
    */
    mutating func centerToOrigin() {
        self.x = 0
        self.y = 0
    }

    /*
     can also assign a new instance to self
     end result will be the same same as modifying individual properties
    */
    mutating func copy(_ point: Point) {
        self = point
    }

    var description: String {
        return "Point(x=\(self.x), y=\(self.y))"
    }
}

var rob = Robot(name: "Goob")
rob.speak(); Robot.destroyHuman()

var p = Point(x: 23.4, y: 19.3), p2 = Point(x: 93.1, y: 31.9)
print(p); p.centerToOrigin()
print(p); p.copy(p2); print(p)
