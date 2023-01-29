extension Int {
    func repetition(task: () -> Void) {
        for _ in 1...self {
            task()
        }
    }
}

3.repetition{ print("Hello, Swift!") }
