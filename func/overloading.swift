func add(n1: Int, n2: Int)->Int {
    n1 + n2
}

func multiply(n1: Int, n2: Int)->Int {
    n1 * n2
}

func subtract(n1: Int, n2: Int)->Int {
    n1 - n2
}

func divide(n1: Int, n2: Int)->Int {
    n1 / n2
}

func binaryOperate(n1: Int, n2: Int, op: (Int, Int)->Int) -> Int? {
    op(n1, n2)
}

func binaryOperate(n1: Int, n2: Int, op: String) -> Int? {
    switch op {
        case "+", "add":
        return n1 + n2
        case "*", "multiply":
        return n1 * n2
        case "-", "subtract":
        return n1 - n2
        case "/", "divide":
        return n1 / n2
        default:
        return nil
    }
}

let n1: Int = 15
let n2: Int = 3
var opStr: String = "add"
var calculated: Int? = binaryOperate(n1: n1, n2: n2, op: opStr)
if let result = calculated {
    print("\(n1) \(opStr) \(n2) = \(result)")
} else {
    print("The operation given is not valid.")
}


// I need sth like `func.__name__` in Python
var opFunc: (Int, Int)->Int = add
calculated = binaryOperate(n1: n1, n2: n2, op: opFunc)
if let result = calculated {
    print("\(n1) \(opFunc) \(n2) = \(result)")
} else {
    print("The operation given is not valid.")
}
