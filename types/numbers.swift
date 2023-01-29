/* Data type
All data type is PascalCase.

Number: 
  - signed integer: Int8, Int16, Int32, Int64
  - unsigned integer: UInt8, UInt16, UInt32, UInt64
  - single precision floating-point: Float
  - double precision : Double
*/

func exponent(of number: UInt) -> Int {
    var copiedNumber: UInt = number
    var exp: Int = 0
    while copiedNumber > 1 {
        copiedNumber /= 2
        exp += 1
    }
    return exp
}

var num: Int = -100
let unum: UInt = 300

print("Int.max: \(Int.max), Int.min: \(Int.min)")
print("UInt.max: \(UInt.max), UInt.min: \(UInt.min)")

// Swift doesn't support implicit type casting.
var n:UInt = UInt(Int.max) + 1
let exp = exponent(of: n)

print("Int type requires \(exp + 1) bits in this system.")

// Boolean
var isEmpty: Bool = true
isEmpty.toggle()
print(isEmpty)

// Floating-point
var fnum: Float = 1234567890.1
var dnum: Double = 1234567890.1
print("Float: \(fnum), Double: \(dnum)")
