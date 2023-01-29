// throwing, catching, propagating, manipulating resolvable error 

enum VendingMachineError: Error {  // `Error` is a protocol.
    case invalidSelection
    case insufficientFunds(coinsNeeded: Int)
    case outOfStocks
}

struct Item {
    var price: Int
    var count: Int
}

class VendingMachine {
    var inventory = [
        "Candy Bar": Item(price: 12, count: 7),
        "Chips": Item(price: 10, count: 4),
        "Pretzels": Item(price: 7, count: 11)
    ]
    var coinsDeposited: Int = 0

    // This method propagates an error by throwing it.
    func vend(itemNamed name: String) throws {
        guard let item = inventory[name] else {
            throw VendingMachineError.invalidSelection
        }

        guard item.count > 0 else {
            throw VendingMachineError.outOfStocks
        }

        guard item.price <= coinsDeposited else {
            throw VendingMachineError.insufficientFunds(
                    coinsNeeded: item.price - coinsDeposited)
        }

        coinsDeposited -= item.price
            var newItem = item
            newItem.count -= 1
            inventory[name] = newItem
            print("Dispensing \(name).")
    }
}

 // Function with `throws` after param tuple is called 'throwing function'.
 // Put `-> <returnValue>` if the function returns something.
func purchase(_ coins: Int) throws -> String {
    let requiredCoins = 5
    if coins < requiredCoins {
        throw VendingMachineError.insufficientFunds(
                coinsNeeded: requiredCoins - coins)
    }
    return "Cola"
}


/*  - Propagating error to the surrounding scope: `try`
 *  - 
 */


