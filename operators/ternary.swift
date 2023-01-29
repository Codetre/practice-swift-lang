func bigger(n1: Int, n2: Int) -> Int {
    // Put space before n2 or the question mark parsed as Optional 
    return n1 > n2 ? n1 : n2
}

var v1: Int = 3
var v2: Int = 5
print("Bigger number is: \(bigger(n1: v1, n2: v2))")
