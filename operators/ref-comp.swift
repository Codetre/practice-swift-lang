class A { }
class B { }

let instance1: A = A()
let instance2: A = instance1
let instance3: B = B()
let refComp12: Bool = instance1 === instance2
let refComp23: Bool = instance2 === instance3
print("\(instance1) and \(instance2) refere to the same object: \(refComp12)")
print("\(instance2) and \(instance3) refere to the same object: \(refComp23)")
