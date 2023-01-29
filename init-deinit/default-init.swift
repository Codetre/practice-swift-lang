// `struct` has a default member-wise init.
struct Point {
    let x: Int
    let y: Int
}

// But `class` does not have it.
class Coordinates {
    let x: Int
    let y: Int
    
    // Error if without the init.
    init(_ x: Int, _ y: Int) {
        self.x = x
        self.y = y
    }
}

let p1 = Point(x: 3, y: 5)
let origin = Coordinates(0, 0)
