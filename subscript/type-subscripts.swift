/* Call on {instance,type}
 * `static subscript` or `class subscript` for allowing overriding in subclass.
 */
enum Planet: Int {
    case sun = 0, mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
    case none = -1

    static subscript(order: Int) -> Planet {
        if let found = Planet(rawValue: order) {
            return found
        } else {
            return Planet.none
        }
    }
}

let thirdPlanet: Planet = Planet[3]
print(thirdPlanet)
let thirteenPlanet: Planet = Planet[13]
print(thirteenPlanet)
