// dictionary: collection of key-value mappings
var citizens: Dictionary<String, Int> = Dictionary<String, Int>()
var animals: [String:Int] = [String:Int]()

print(citizens)
print(animals)

typealias Lang = [String:String]
var compatibility: Lang = [
    "Python": "3.9",
    "Swift": "5.6",]
dump(compatibility)

// Properties & Methods
var numItems: Int = compatibility.count
var emptiness: Bool = compatibility.isEmpty
print("\(numItems) languages used. Empty: \(emptiness).")

var pyVer: String = compatibility["Python"]!
print(pyVer)
var swVer: String = compatibility.removeValue(forKey: "Swift")!
print(compatibility["Swift"])
print(compatibility["Swift", default: "5.4"])
