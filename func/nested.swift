enum Direction: Int {
    case left = -1, right = 1
}

func axisMove(current: inout Int, direction: Direction, amount: UInt) {
    func getVector() -> Int {
        direction.rawValue * Int(amount)
    }
    let moving: Int = getVector()
    print("Moving \(moving)...")
    current += moving
}

var current: Int = 10
print("You're on \(current).")
axisMove(current: &current, direction: Direction.left, amount: 2)
print("You're on \(current) now.")
