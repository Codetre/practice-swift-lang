import Foundation

// "subclass" inherits from "superclass".
class Model1 {
    var storage: Int
    var prodYear: Int = 2011
    var care: Bool {
        get {
            warrantyYear > 5 ? true : false
        }
    }

    var warrantyYear: Int {
        get {
            care ? 7 : 5
        }
        set {
            switch newValue {
                case 5:
                care = false
                case 7: 
                care = true
                default:
                print("The system now only supports 5-or-7-year warranty.")
            }
    }

    init(storage: Int, care: Bool) {
        self.storage = storage
        self.care = care
    }

    func logInfo() {  // Overriden method.
        print("prodYear: \(prodYear), storage: \(storage)")
    }
}


// Prefix `final` be ahead of any introducer like `class`, `var`, `func`, ...
final class FinalClass {
    func sayHello() {
        print("Nobody can override on me.")
    }
}

// This turns out an error.
class SubFinalClass: FinalClass {
}

let model1 = Model1(storage: 512, care: false)
model1.logInfo()
