// When you need a class, enum, or struct to conform to some rules
protocol CatDog {
    var n: String { get }
    func catOrDog()
}


class MyClass: CatDog {
    var n: String { get { return "Cat" } }  // specify getter

    func catOrDog() {
        print("My allegiance lies with \(n)!")
    }
}


class AnotherClass: CatDog {
    var n: String = "Dog"  // set a value

    func catOrDog() {
        print("I am with \(n)!")
    }
}


let m = MyClass()
m.catOrDog()

let n = AnotherClass()
n.catOrDog()


// Extensions can add functionality to an existing type
protocol OddEven {
    var isEven: Bool { get }
}

extension Int: OddEven {
    var isEven: Bool {
        get {
            if self % 2 == 0 {
                return true
            }
            return false
        }
    }
}

let i = 100
print(i.isEven)
print(101.isEven)

