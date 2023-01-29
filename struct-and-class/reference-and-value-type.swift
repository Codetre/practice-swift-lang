struct BasicInformation {
    let name: String
    var age: Int
}

class Person {
    var height: Float = 0.0
    var weight: Float = 0.0
}

var citizen1 = BasicInformation(name: "James", age: 13)
var citizen2 = citizen1  // Copy of `citizen1`, there are unrelated on memory.
citizen1.age = 14
print("citizen1: \(citizen1)")
print("citizen2: \(citizen2)")

var person1 = Person()
// This var got the reference to the heap region where `person1` refers.
var person2 = person1  
person1.height = 173.5
print("person1 height: \(person1.height), weight: \(person1.weight)")
print("person2 height: \(person2.height), weight: \(person2.weight)")
// Change on one instance has affected to the another.

// Identity operator
let areSameRefs: Bool = person1 === person2
print("Two of the instance referes to the same heap area? \(areSameRefs)")
