extension Double {
    // New computed prop, but stored prop not allowed.
    // unit `x` to meter.
    var km: Double { return self * 1_000.0 }
    var m: Double { return self }
    var cm: Double { return self * 0.01 }
    var mm: Double { return self * 0.001 }
    var ft: Double { return self / 3.28084 }
}

let oneInch = 25.4.mm
print("One inch is \(oneInch) meters.")

let threeFeet = 3.ft
print("Three feet is \(threeFeet) meters.")

let aMarathon = 42.km + 195.m
print("A marathon is \(aMarathon) meters long.")
