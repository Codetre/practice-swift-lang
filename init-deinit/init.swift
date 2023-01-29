class BuildingBuilder {
    var numFloors: Int
    var area: Float

    init(numFloors: Int, area: Float) {
        self.numFloors = numFloors
        self.area = area
    }

    func printBasicInfo() -> Void {
        print("- Area: \(area)")
        print("- Floors: \(numFloors)")
    }
}

let apartmentBulder = BuildingBuilder(numFloors: 23, area: 134.3)
apartmentBulder.printBasicInfo()
