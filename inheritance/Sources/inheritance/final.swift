// Any class cannot inherits from this class.
final class PerfectCar: Car {
    override var description: String {
        return "This masterpiece is perfect and unchangeable."
    }
}

class MorePerfect: PerfectCar {}
