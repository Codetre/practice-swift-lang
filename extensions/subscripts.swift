extension Int {
    subscript(digitIndex: Int) -> Int {
        var decimalBase = 1
        for _ in 0..<digitIndex {
            decimalBase *= 10
        }
        return (self / decimalBase) % 10
    }
}

func digit(at index: Int, of number: Int) -> Void {
    print("\(index + 1)-th number in \(number): \(number[index])")
}

digit(at: 3, of: 12345)
digit(at: 6, of: 12345)
