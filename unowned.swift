class Person {
    let name: String
    var card: CreditCard?

    init(name: String) {
        self.name = name
    }

    deinit {
        print("\(name) is being deinitialized.")
    }
}

class CreditCard {
    let number: Int
    unowned let owner: Person

    init(number: Int, owner: Person) {
        self.number = number
        print("Unowned ref. made")
        self.owner = owner
    }

    deinit {
        print("Card #\(number) is being deinitialized.")
    }
}

var jisoo: Person? = Person(name: "Jisoo")
if let person: Person = jisoo {
    person.card = CreditCard(number: 10004, owner: person)
}

jisoo = nil
