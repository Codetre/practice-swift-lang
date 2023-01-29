var increment: (Int) -> Int = { (number: Int) in 
    let computed = number + 1
    print("Incrementing \(number) -> \(computed)")
    return computed
}

let veryBigEnd: Int = 999999
// Wrap by a func because the internal code requires heavy calc.
func neverEndCalc() {
    let numbers: [Int] = Array(0...veryBigEnd)
    print("Raw array: \(numbers)")
    let incNumbers: [Int] = numbers.map(increment)
    print(incNumbers[4])
}
// neverEndCalc()  // Comment out 

// Protocol `SequenceType` or `CollectionType` has `lazy` computed property.
let lazyNumbers = Array(0...veryBigEnd).lazy
// Annotate type as 'Array<int>' iterate all over elements.
let lazyIncNumbers: LazyMapSequence<Array<Int>, Int> =
    lazyNumbers.map(increment)
print(lazyIncNumbers[4])
