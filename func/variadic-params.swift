// Get variadic parameter in Array
// A function has only one variadic parameter
func greeting(to friends: String...) -> String {
    var words: String = "Hello my friends: "
    nameTag: for (idx, friend) in friends.enumerated() {
        if idx != 0 {
            words += ", "
        }
        words += friend
    }
    words += "!"
    return words
}

print(greeting(to: "Duke", "Alisa", "Cohen"))
