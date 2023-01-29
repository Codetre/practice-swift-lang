// Forced unwrapping
let name: String? = "Michael"
print(name!)

// Optional binding
if let nameSecure = name {
    print("My name is \(nameSecure).")
} else {
    print("Please fill the name first.")
}

// Optional binding 2
enum Color: String {
    case red="#FF0000"
    case blue="#0000FF"
    case green="#00FF00"
}

let code1 = "#FF0000"
let code2 = "#00FF00"
if let color1 = Color(rawValue: code1), let color2 = Color(rawValue: code2) {
    print("Use colors: \(color1), \(color2).")
} else {
    print("Some of the color is not specified.")
}

// Implicitly unwrapped optional
/* `Optional<T>` first evaluated whether it is nil or not. But
 * `Optional<T>!` evaluated as like it may not nil and fails when if it is nil.
 * 명시적 추출은 Optional일 경우를 대비한 안전 장치들을 먼저 발동시키지만,
 * 암시적 추출은 nil이 아닐 것이라고 가정하고 프로그램을 진행하다, 실제 nil이면
 * 그때 프로그램이 실패하게 된다.
 */
let color: Color! = Color(rawValue: code1)
print(color) 
