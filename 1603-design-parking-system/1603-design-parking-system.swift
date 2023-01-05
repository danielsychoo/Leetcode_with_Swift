
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
            return self.calculate(&self.big)
        case 2:
            return self.calculate(&self.medium)
        default:
            return self.calculate(&self.small)
        }
    }
    
    func calculate(_ typeCount: inout Int) -> Bool {
        
        if typeCount > 0 {
            typeCount -= 1
            return true
        } else {
            return false
        }
    }
}

/**
 * Your ParkingSystem object will be instantiated and called as such:
 * let obj = ParkingSystem(big, medium, small)
 * let ret_1: Bool = obj.addCar(carType)
 */