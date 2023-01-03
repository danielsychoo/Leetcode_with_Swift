class Solution {
    
    func buildArray(_ nums: [Int]) -> [Int] {
    
        var result = nums

        for i in 0...nums.count-1 {
            if result[i] != nums[nums[i]] { result[i] = nums[nums[i]] }
        }

        return result
    }
}