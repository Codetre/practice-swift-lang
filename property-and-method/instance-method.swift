// Reference type method
class Point {
    var x: Int = 0
    var y: Int = 0

    // instance method - `self` indicates the instance itself.
    // Looking course for identifiers: local var -> param -> prop
    func move(_ xOffset: Int, _ yOffset: Int) {
        self.x += xOffset
        y += yOffset
    }

    // This raise an error
    func reset() -> Void {
        self = Point()
    }
}

var p = Point()
p.move(3, 5)
print("(x, y) = (\(p.x), \(p.y))")

// Value type method
struct Coordinates {
    var x: Int 
    var y: Int

    // `mutating` makes props mutable
    mutating func move(_ xOffset: Int, _ yOffset: Int) {
        x += xOffset
        y += yOffset
    }

    mutating func reset() -> Void {
        self = Coordinates(x: 0, y: 0)
    }
}

var c = Coordinates(x: 0, y: 0)
c.move(1, 2)
print(c)
c.reset()
print(c)
