enum Color {
    case red

    func printSelf() {
        print(self)  // red
        print(type(of: self))  // Color
    }
}

struct Circle {
    var radius: Double
    
    func printSelf() {
        print(self)
        print(type(of: self))
    }
}

var c = Color.red
c.printSelf()

var circle = Circle(radius: 0.3)
circle.printSelf()
