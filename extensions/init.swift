struct Size {
    var width = 0.0, height = 0.0
}

struct Point {
    var x = 0.0, y = 0.0
}

struct Rect {
    // struct has a default, member-wise initiliazer.
    var origin: Point = Point()
    var size: Size = Size()
}

let defaultRect = Rect()  // Default initializer called.
let memberwiseRect = Rect(origin: Point(x:3.0, y:2.0),
    size: Size(width:5.0, height: 5.0))  // Member-wise initializer called.

extension Rect {
    init(center: Point, size: Size) {
        let originX = center.x - (size.width/2)
        let originY = center.y - (size.height/2)
        self.init(origin: Point(x: originX, y: originY),
            size: size)
    }
}

let centerRect = Rect(center: Point(x: 0.0, y: 0.0), 
    size: Size(width: 5.0, height: 5.0))
dump(centerRect)
