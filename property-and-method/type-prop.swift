import Foundation

class Monitor {
    static var model: String = "hires19201080"
    static var sn: String {
        // Only static member can be used in the static computed.
        get { model + "-a2c4" }
        set(code) { model += code }
    }

    var manufactYear: Int
    var warranty: Bool {
        get {
            let curYear: Int = Calendar.current.component(.year, from: Date())
            return curYear - manufactYear < 5
        }
    }

    init(`in` year: Int) {
        manufactYear = year
    }
}

var monitor = Monitor(in: 2017)
dump(monitor)
print("model: \(Monitor.model), warranty: \(monitor.warranty)")
print("SN: \(Monitor.sn)")
Monitor.sn = "RCL103"
print("SN: \(Monitor.sn)")
