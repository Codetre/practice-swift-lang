import Foundation

infix operator ^
func ^(lhs: Float, rhs: Int) -> Float {
    var exp: Float = 1.0
    for _ in 0 ..< rhs {
        exp *= lhs
    }
    return exp
}

struct Point {
    var x: Float
    var y: Float
    
    // Closure representation
    var distance: Float {
        // getter in computed prop is mandatory.
        get {
            sqrt((x ^ 2) + (y ^ 2))
        }
    }
    
    var originSymm: Point {
        get {
            Point(x: -x, y: -y)
        }
        
        // Setter in computed prop is optional.
        set {  // same as set(newValue), `newValue` is conventional
            x = -newValue.x
            y = -newValue.y
        }
    }
}

var p = Point(x: 10.0, y: 2.0)
print("(x, y) = (\(p.x), \(p.y))")
print("distance from origin: \(p.distance)")
print("origin symm point: (\(p.originSymm.x), \(p.originSymm.y))")
p.originSymm = Point(x: -4.0, y: 1.10)
dump(p)
