/* It means unexpectedly terminated function.
 */
func crashAndBurn() -> Never { // `Never` implies the never-returning
    // `fatalError`: programmer's fault.
    fatalError("Something very, very bad happended.")  // It returns Never
}

class Something {
}

func buildObject() -> Something {
    let status = Int.random(in: -1...0)
    if status != 0 {
        crashAndBurn()
    }
    return Something()
}

let object: Something = buildObject()
