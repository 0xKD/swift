func greet(name: String, day: String) -> String {
    return "Hello \(name), today is \(day)"
}
// arguments must be labeled (including the first one)
// Swift < 3.0 did not require first argument to be labeled
print(greet(name: "Cat", day: "Caturday"))

// to avoid labeling, use `_` before param name
func myGreet(_ name: String, _ day: String) -> String {
    return "Hello \(name), today is \(day)"
}

print(myGreet("Mat", "Monday"))


// return multiple values (return value similar to Python NamedTuple)
func calcSomething(_ stuff: [Int]) -> (min: Int, max: Int) {
    var min = stuff[0]
    var max = stuff[0]

    for s in stuff {
        if s < min {
            min = s
        } else if s > max {
            max = s
        }
    }
    return (min, max)
}

let minmax = calcSomething([1,2,3,4,5])

// access by name (or index)
print(minmax.min)
print(minmax.1)


// returns an optional
func calcAverage(_ nums: Int...) -> Int? {
    let lenNums = nums.count
    if lenNums > 0 {
        var sum = 0
        for num in nums {
            sum += num
        }
        return sum / lenNums
    }
    return nil
}

print(calcAverage(26, 246, 49, 94))
print(calcAverage())


// function is a first class object, can be passed as argument and returned
func adder(_ num: Int) -> ((Int) -> Int) {
    func add(_ val: Int) -> Int {
        return num + val
    }
    return add
}

let addFive = adder(5)
print(addFive(7))
print(addFive(28))

// alternate syntax
func adder2(_ num: Int) -> ((Int) -> Int) {
    return {(number: Int) -> Int in number + num }
}
func adder3(_ num: Int) -> ((Int) -> Int) {
    return { $0 + num }
}

let addSix = adder3(6)
print(addSix(3))
print(addSix(30))

let nums = [1, 2, 3, 4, 5, 6]
print(nums.map({num in 3 * num}))

// .sorted takes function (that takes two arguments and returns a bool)
print(nums.sorted(by: { $0 > $1 }))
print(nums.sorted(by: <))

/* trailing closure (written after function call) when you need to pass closure
as final argument
*/
print(nums.sorted() { $0 > $1 })
// if closure is the only argument, it can be written like this
print(nums.sorted { $0 < $1 })
