/* class is a reference type. Its data is on the heap, and the variable 
 * assigned for the class points to the address of that memory region.
 */

class Person {
    var height: Float = 0.0
    var weight: Float = 0.0
}

var person1 = Person()
let person2 = Person()  // Note this constant acts how

dump(person1)
person1.height = 173.1
dump(person1)

// `person2` cannot points to the another memory region.
dump(person2)
person2.height = 193.1  
// property value changed even though it has been assigned to the constant 
dump(person2)
