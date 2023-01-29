/* Function type representation
 * 1. (Void) -> Void, which is most explicit.
 * 2. () -> Void
 * 3. () -> ()
 */
import Foundation

func filter(by pred: (String) -> Bool, _ items: Array<String>) -> Array<String> {
    var filtered = Array<String>()
    for item in items {
        if pred(item) {
            filtered.append(item)
        }
    }
    return filtered
}

func onlyStartWithAlphaNumeric(_ str: String) -> Bool {
    let pattern: String = "^[0-9a-zA-Z].*"
    let wrappedString = NSString(string: str)
    let result: Int = wrappedString.range(
            of: pattern, options: .regularExpression).location
    if result != 0 {
        return false
    } else {
        return true 
    }
}

let list: [String] = [
    "... You really agree with that?",
    "I have some good idea!", 
    "But what's your point?",
    "^[0-8]"
]
print(filter(by: onlyStartWithAlphaNumeric, list))
