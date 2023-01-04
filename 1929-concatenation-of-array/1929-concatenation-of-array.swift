class Solution {

    func getConcatenation(_ nums: [Int]) -> [Int] {
        var result = nums
        nums.forEach { result.append($0) }
        
        return result
    }
}