extension Int {
    enum Kind {
        case negative, zero, positive
    }

    var kind: Kind {
        switch self {
            case 0:
            return .zero
            
            case let x where x < 0:
            return .negative

            default: 
            return .positive
        }
    }
}

func printIntegerKinds(_ numbers: [Int]) -> Void {
    for number in numbers {
        switch number.kind {
            case .zero:
            print("0", terminator:" ")
            case .negative:
            print("-", terminator:" ")
            case .positive:
            print("+", terminator:" ")
        }
    }
}

dump(Int.self.Kind)

var number = 3
print("\(number) is \(number.kind).")

var numbers = [-1, 0, 5, 7, -3]
print("Signs of \(numbers): ", terminator: " ")
printIntegerKinds(numbers)
