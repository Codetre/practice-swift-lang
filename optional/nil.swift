// Only Optional type can have the `nil` state.
var num1: Optional<Int> = nil  // Generic representation
var num2: Int? = nil  // `?` symbol has the same effect with the above.

enum PenColor: String {
    case red="#FF0000"
    case blue="#0000FF"
    case green="#00FF00"
}

let colorCode: String = "00FF00"  // "#" forgotten.
if let color = PenColor(rawValue: colorCode) {
    print(color)
} else {
    print("color got nil")
}
