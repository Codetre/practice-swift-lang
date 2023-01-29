import Foundation

let pi: Float = 3.14

struct Circle {
    var radius: Float
    var area: Float {
        get{
            pi * radius * radius
        }
    }

    // Different signatures of `init` makes them distinct.
    // Default `init` is shadowed if user-defined init exists.
    init(radius: Float) {
        self.radius = radius
    }

    init(area: Float) {
        self.radius = sqrt(area/pi)
    }
}

let c1 = Circle(radius: 5)
let c2 = Circle(area: 5)

print("Circle1.radius: \(c1.radius), area: \(c1.area)")
print("Circle2.radius: \(c2.radius), area: \(c2.area)")
