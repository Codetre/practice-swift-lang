// struct is value type, which means its data is on stack 
struct BasicInformation {
    var name: String
    var age: Int
}

var person1 = BasicInformation(name: "James", age: 23)
print(person1)
person1.age = 24
print(person1)

let person2 = BasicInformation(name: "Casy", age: 32)
print(person2)
person2.age = 33  // Immutable: you can't change any of its property.
print(person2)
