/* Console Log

`print`, `dump`  are used for logging.
`dump` show more information than `print`.
*/

struct BasicInformation {
    let name: String
    var age: Int
}

class Person {
    var height: Float = 0.0
    var weight: Float = 0.0
}

let info: BasicInformation = BasicInformation(name: "Swift", age: 6)
let person: Person = Person()
person.weight = 45
person.height = 160

// Logging
print("\n-- print and dump struct")
print(info)
dump(info)

print("\n-- print and dump an instance of class")
print(person)
dump(person)
