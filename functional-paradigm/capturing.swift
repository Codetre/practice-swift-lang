/* A closure inside the `stepIncrement` captures the params `initValue` and
 * `incrmental`, also the local variable `currentValue` even after the 
 * `stepIncrement` has finished and popped from the stack.
 *
 * These memory area can be accessed only by the closure, making the accessing 
 * safer.
 */
func stepIncrement(_ initValue: Int, by incremental: Int) -> () -> Int {
    var currentValue = initValue
    return { () -> Int in 
        currentValue += incremental
        return currentValue
    }
}

let stepperBy10 = stepIncrement(3, by: 10)
for _ in 0...3 {
    print(stepperBy10())
}

/* Every closure has their own memory and they are unrelated to other
 * closures' memory even if all the closure originated from the same function.
 */
print("Not start from the 53")
let anotherStepperBy10 = stepIncrement(3, by: 10)
for _ in 0...3 {
    print(anotherStepperBy10())
}

// Closure is reference type like class.
print("This loop starts from 53.")
let referenceToClosure = anotherStepperBy10
for _ in 0...3 {
    print(referenceToClosure())
}
