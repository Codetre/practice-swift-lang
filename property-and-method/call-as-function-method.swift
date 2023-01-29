// .callAsFunction()
struct Speaker {
    var volume: Int = 0

    mutating func callAsFunction(_ val: Int) {
        volume = val
    }

    func callAsFunction(status: Bool) {
        if status {
            print("Turn on the speaker.")
        } else {
            print("Turn off the speaker.")
        }
    }
}

var surroundSpeaker = Speaker()
surroundSpeaker(10)
print("The vol is \(surroundSpeaker.volume).")
surroundSpeaker(status: false)
// Appending `.callAsFunction` after instance name and call it is not different
surroundSpeaker.callAsFunction(status: true)

