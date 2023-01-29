struct Coordinates {
    // `x` and `y` are stored properties.
    var x: Int
    var y: Int
}

// struct has a default initializer whose params are stored props.
let whereami = Coordinates(x:0, y:0)  

class Position {
    let name: String
    var coordinates: Coordinates?

    /* class doesn't have a default initializer like struct.
     * define your `init` if you have stored props no default values.
     */
    init(name: String) {
        self.name = name
    }
}

var object = Position(name: "ball") 
// You can give the prop value as you want.
object.coordinates = Coordinates(x: -10, y: 200)
dump(object)

/* Lazy stored property
 * 1. `lazy var`
 * 2. this prop doesn't have its value until used(like `print(instance.lazyProp)`).
 * 3. useful if its value requires heavy computation
 */
class DataImporter {
    // Assume init of this class is pretty time-consuming.
    var filename: String = "sample.txt"
}

class DataManager {
    // put behind initializing importer as later as possible 
    lazy var importer = DataImporter()  
    var data: [String] = []
}

let manager = DataManager()  // importer not initialized yet.
print(manager.importer.filename) // importer now initialized.
