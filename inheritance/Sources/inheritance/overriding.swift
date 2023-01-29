class Train: Vehicle {
    override func makeNoise() {
        super.makeNoise()  // Not any effect, of course.
        print("Choo Choo")
    }
}

class Car: Vehicle {
    var gear = 1
    override var description: String {
        return super.description + " in gear \(gear)"
    }
}
