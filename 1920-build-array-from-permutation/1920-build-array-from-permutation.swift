class Solution {
    
    func buildArray(_ nums: [Int]) -> [Int] {

        var dict: [Int: Int] = [:]
        for i in 0...nums.count-1 {
            dict[i] = nums[nums[i]]
        }

        var result: [Int] = []
        for i in 0...nums.count-1 {
            result.append(dict[i]!)
        }

        return result
    }
}