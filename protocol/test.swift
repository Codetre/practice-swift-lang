protocol FlyBehavior {
    func fly() -> Void
}

class FlyWithWings: FlyBehavior {
    func fly() -> Void {
        print("Fly with wings")
    }
}

class Duck: FlyWithWings {
}

var duck = Duck()
duck.fly()
