let uint8min: UInt8 = UInt8.min
let underflow: UInt8 = uint8min &- 1
// Type.min &- 1 becomes max value of the type, instead of underflow
print("\(UInt8.min) <= UInt8 <= \(UInt8.max)")
print("\(uint8min) &- 1: \(underflow)")

// Type.max &+ 1 becomes min value of the type, instead of overflow
let uint8max: UInt8 = UInt8.max
let overflow: UInt8 = uint8max &+ 1
print("\(uint8max) &+ 1: \(overflow)")

print("Think as a circular values")
