let name: String = "Swift"
print("# of characters in \"name\": \(name.count)")
print("Check if the string is empty: \(name.isEmpty)")


var introduce: String = String()  // Initiliazer
introduce.append("My name is ")
introduce += name + "."
print(introduce)

// Compare equality
let s1: String = "Hello"
let s2: String = "hello"
print("Are s1 and s2 equal: \(s1 == s2)")

// Prefix & suffix 
let word: String = "unfaithful"
print("\(word) has prefix \"un\": \(word.hasPrefix("un"))")
print("\(word) has suffix \"ful\": \(word.hasSuffix("ful"))")
