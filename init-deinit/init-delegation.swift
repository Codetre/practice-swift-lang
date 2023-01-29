// Initializer delegation for value type
enum Color: String {
    case red="#FF0000"
    case green="#00FF00"
    case blue="#0000FF"
    case black="#000000"

    init() {
        self = .black
    }

    init(code: String) {
        if let color = Color(rawValue: code) {
            self = color
        } else {
            print("That color is not supported yet. Black is assigned")
            self = .black
        }
    }

    init(name: String) {
        // This init delegates initialization.
        switch name.lowercased() {
            case "red":
            self.init(code: "#FF0000")
            case "green":
            self.init(code: "#00FF00")
            case "blue":
            self.init(code: "#0000FF")
            default:
            self.init(code: "#000000")
        }
    }
}

let color = Color(name: "red")
let color2 = Color(name: "grey")
dump(color)
dump(color2)
