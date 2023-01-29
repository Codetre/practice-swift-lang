let bits1: Int = 0b1011
let bits2: Int = 0b0101

let inv: Int = ~bits1
let and12: Int = bits1 & bits2
let or12: Int = bits1 | bits2
let xor12: Int = bits1 ^ bits2

let fmtBits1 = String(bits1, radix: 2)
let fmtBits2 = String(bits2, radix: 2)
let fmtInv = String(inv, radix: 2)
let fmtAnd12 = String(and12, radix: 2)
let fmtOr12 = String(or12, radix: 2)
let fmtXor12 = String(xor12, radix: 2)

print("~\(fmtBits1): \(fmtInv)")
print("\(fmtBits1) & \(fmtBits2): \(fmtAnd12)")
print("\(fmtBits1) | \(fmtBits2): \(fmtOr12)")
print("\(fmtBits1) ^ \(fmtBits2): \(fmtXor12)")

// Shift
let lsht2: Int = bits1 << 2
let rsht2: Int = bits1 >> 2

let fmtLsht2: String = String(lsht2, radix: 2)
let fmtRsht2: String = String(rsht2, radix: 2)

print("\(fmtBits1) << 2: \(fmtLsht2)")
print("\(fmtBits1) >> 2: \(fmtRsht2)")
