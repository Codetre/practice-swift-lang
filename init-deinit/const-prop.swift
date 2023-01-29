struct Customer {
    let name: String
    let id: String
}

struct Account {
    let owner: Customer
    var balance: Int = 0
}

// const props should be assigned before init.
let customer = Customer(
    name: "Jimmy Carter",
    id: "00137522"  // Error if this line vanished.
)  
let account = Account(owner: customer)
