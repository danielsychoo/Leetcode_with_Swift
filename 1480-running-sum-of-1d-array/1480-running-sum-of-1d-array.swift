class Solution {

    func runningSum(_ nums: [Int]) -> [Int] {
    
        if nums.count == 0 { return [] }

        var result = [nums[0]]
        for i in 1...nums.count-1 {
            let num = result[i-1] + nums[i]
            result.append(num)
        }

        return result
    }
}