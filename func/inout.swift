// 
func swap(_ a: inout Int, and b: inout Int) {
    let temp: Int = a
    a = b
    b = temp
}

/* Constraints
 * - Constant cannot be in-out param
 * - So does variadic param
 */
var a = 3
var b = 5
print("a: \(a), b: \(b)")
// & refers address
swap(&a, and: &b)
print("a: \(a), b: \(b)")
