class Solution {
    func findDifferentBinaryString(_ nums: [String]) -> String {
        // EdgeCase
        if nums.count == 1 {
            switch nums[0] {
            case "1":
                return "0"
            default:
                return "1"
            }
        }
        
        let count: Float = Float(nums.count)
        let max: Int = Int(pow(count, 2)) - 1

        for value in 0 ... max {
            var bitValue = String(value, radix:2)
            while bitValue.count < Int(count) { bitValue = "0" + bitValue }
            if !nums.contains(bitValue) { return bitValue }
        }

        return ""
    }
}