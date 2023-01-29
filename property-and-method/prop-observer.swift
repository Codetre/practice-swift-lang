class Account {
    var locked: Bool = true
    var balance: Int {
        willSet {
            print("Your balance: \(balance) -> \(newValue).")
            locked = false
        }

        didSet {
            locked = true
            print("Your balance is now \(balance)(<- \(oldValue))")
        }
    }

    var inDollar: Float {
        get {
            Float(balance) / 1000.0
        }

        set {
            balance = Int(newValue * 1000)
        }
    }

    init(amount: Int = 0) {
        balance = amount
    }
}

class GlobalAccount: Account {
    // Getter and setter of the overrided variable still work
    // Types before and after override should be the same
    override var inDollar: Float {
        willSet {
            print("Balance in dollar: \(inDollar) -> \(newValue).")
        }

        didSet {
            print("Your balance in dollar now: \(inDollar)(<-\(oldValue))")
        }
    }
}


let myAccount = Account()
dump(myAccount)
myAccount.balance += 300
print("You have now $\(myAccount.inDollar).\n")

let myGlobalAccount = GlobalAccount()
dump(myGlobalAccount)
myGlobalAccount.balance += 1300
print("You have now $\(myGlobalAccount.inDollar).")
myGlobalAccount.inDollar = 13


// Observer to global variable.
var securityState: Bool = true {
    willSet {
        print("The security state will change.")
    }

    didSet {
       doorlock = securityState
       window = securityState
       alert =  securityState
       print("All system(door, window, alert) changed.")
    }
}

var doorlock: Bool = securityState
var window: Bool = securityState
var alert: Bool = securityState

securityState = false
