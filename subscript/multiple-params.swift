struct TempMap {
    var xMax: Int
    var yMax: Int
    var temp: [Float]

    init(_ xMax: Int, _ yMax: Int) {
        self.xMax = xMax
        self.yMax = yMax
        self.temp = Array(repeating: 0.0, count: xMax * yMax)
    }

    subscript(x: Int, y: Int) -> Float {
        get {
            temp[y * xMax + x]
        }
        set {
            temp[y * xMax + x] = newValue
        }
    }
}

var seoulTempMap = TempMap(10, 20)
var temp = seoulTempMap[5, 3]
print("Temperature at [5, 3] in Seoul is now \(temp). Oops, there's a mistake.")
seoulTempMap[5, 3] = 28.3
temp = seoulTempMap[5, 3]
print("Temperature at [5, 3] in Seoul is now \(temp).")
