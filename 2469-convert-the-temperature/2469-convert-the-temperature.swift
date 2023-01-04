class Solution {

    func convertTemperature(_ celsius: Double) -> [Double] {
    
        let k = celsius + 273.15
        let f = celsius * 1.80 + 32.00

        return [k, f]
    }
}