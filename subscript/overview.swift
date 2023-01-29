// All of these examples are about "instance scripts".

enum SolarPlanet: Int {
    case sun=0, mercury, venus, earth, mars, jupiter, saturn, unarnus, neptune
    case outOfScope

    static subscript(i: Int) -> SolarPlanet {
        return SolarPlanet(rawValue: i) ?? SolarPlanet.outOfScope
    }
}

let planet = SolarPlanet[1]
print(planet)

struct TimesTable {
    var multiplier: Int

    subscript(index: Int) -> Int {
        index * multiplier
    }
    /* Or, you can write it as following:
       subscript(index: Int) {
         get{
             index * multiplier
         }
       }
     */
}
var threeTimes = TimesTable(multiplier: 3)
print(threeTimes[4])  // 12

// Dictionary of type [T1:T2] subscript returns Optional<T2>
var legsOfAnimal: [String:Int] = [
    "spider": 8,
    "bird": 2,
]
let birdLegs = legsOfAnimal["bird"]
print(type(of: birdLegs))
