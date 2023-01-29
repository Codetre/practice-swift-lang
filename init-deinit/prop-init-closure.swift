struct Dice {
    /* Any other props in closure init is prohibited.
     * Because closure execution happens before the prop init.
     */
    static var roll: () -> Int = { Int.random(in: 1...6) }
}

print("Roll the dice: \(Dice.roll()).")
print("Roll the dice: \(Dice.roll()).")

struct Lottery {
    var winningNum: Int = { Int.random(in: 1...10) }()  // Don't forget `()`.
}

let yourChoice = 3
let lottery = Lottery()
let result: Bool = lottery.winningNum == yourChoice
print(result)
