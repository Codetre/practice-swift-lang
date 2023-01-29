func taskManage(task: (String) -> Bool, 
    on success: () -> Void,
    but fail: () -> Void) {
    let data: String = "CODE"
    let result: Bool = task(data)
    result ? success() : fail()
}

taskManage { (data) in
    print("Processing '\(data).")
    return true
} on: {print("Success") 
} but: { print("Fail") }

print("Another example `data` added as param.\n")

func taskManage(_ data: String, task: (String) -> Bool, 
    on success: () -> Void,
    but fail: () -> Void) {
    let result: Bool = task(data)
    result ? success() : fail()
}

// Argument label for the first trailing closure is prohibited.
taskManage("Code snippet") { (data) in  // `task: {...` becomes error.
    print("\(data) is been processing.") 
    return false
} on: { print("Success") 
} but: { print("Fail") }
