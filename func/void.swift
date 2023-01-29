/* A function omitting `-> Void` in its signature is not the overloaded 
 * function.
 */
func listItems(_ items: String...) -> Void {
    for item in items {
        print(" - \(item)")
    }
}

print("-- Participants --")
listItems("James", "Jimmy", "Jack", "John", "Julianne")
