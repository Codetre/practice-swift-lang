class Person {
    var height: Float = 0.0
    var weight: Float = 0.0

    // One deinit per class, no parenthesis after func name
    deinit {
        print("Deinitialize the class instance soon.")
    }
}

var person: Person? = Person()  // nillable to call `deinit`.
print("Class has initialized.")
person = nil

