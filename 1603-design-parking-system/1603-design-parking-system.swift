
class ParkingSystem {
    
    var big = 0
    var medium = 0
    var small = 0

    init(_ big: Int, _ medium: Int, _ small: Int) {
        self.big = big
        self.medium = medium
        self.small = small
    }
    
    func addCar(_ carType: Int) -> Bool {
        
        switch carType {
        case 1:
            self.big = self.calculate(self.big)
            return self.big >= 0 ? true : false
        case 2:
            self.medium = self.calculate(self.medium)
            return self.medium >= 0 ? true : false
        default:
            self.small = self.calculate(self.small)
            return self.small >= 0 ? true : false
        }
    }
    
    func calculate(_ typeCount: Int) -> Int {
        
        if typeCount > -1 { return typeCount-1 }
        else { return typeCount }
    }
}

/**
 * Your ParkingSystem object will be instantiated and called as such:
 * let obj = ParkingSystem(big, medium, small)
 * let ret_1: Bool = obj.addCar(carType)
 */