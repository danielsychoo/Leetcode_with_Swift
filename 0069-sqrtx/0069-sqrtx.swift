class Solution {
    func mySqrt(_ x: Int) -> Int {

        var value = 0
        while value * value <= x {
            value += 1
        }

        return value-1
    }
}