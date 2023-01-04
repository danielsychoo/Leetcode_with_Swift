class Solution {

    func getConcatenation(_ nums: [Int]) -> [Int] {
    
        var result = nums
        for i in 0...nums.count-1 {
            result.append(nums[i])
        }
    
    return result
}
}