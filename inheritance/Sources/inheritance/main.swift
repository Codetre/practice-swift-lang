print("\n - Subclassing and set properties:")
let tandem = Tandem()
tandem.hasBasket = true
tandem.currentNumberOfPassengers = 2
tandem.currentSpeed = 22.0
print("Tandem: \(tandem.description)")

print("\n - Call overrided method:")
let train = Train()
train.makeNoise()

print("\n - Call overrided prop:")
let car = Car()
car.currentSpeed = 25.0
car.gear = 3
print(car.description)

print("\n - Observer on overrided prop:")
var automatic = AutomaticCar()
automatic.currentSpeed = 32.0
print(automatic.description)
