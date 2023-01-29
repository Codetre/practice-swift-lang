// Superclass
public class Vehicle {
    var currentSpeed = 0.0
    var description: String {  // Read-only.
        return "Traveling at \(currentSpeed) miles per hour."
    }
    func makeNoise() {}
}

// Subclass
class Bicycle: Vehicle {
    var hasBasket = false
}

// Subclass
class Tandem: Bicycle {
    var currentNumberOfPassengers = 0
}
