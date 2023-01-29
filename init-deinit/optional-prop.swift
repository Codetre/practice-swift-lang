// Props can be Optional if it doesn't have to get the value during init.
struct Product {
    var name: String
    var price: Int?
}

let prod1 = Product(name: "tv")
dump(prod1)
let prod2 = Product(name: "tv", price: 100)
dump(prod2)
