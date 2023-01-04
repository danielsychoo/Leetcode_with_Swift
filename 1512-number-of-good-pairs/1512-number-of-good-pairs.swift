class Solution {

    func numIdenticalPairs(_ nums: [Int]) -> Int {
    
        var result = 0

        for i in 0...nums.count-2 {
            let base = nums[i]

            for n in i+1...nums.count-1 {
                if base == nums[n] {
                    result += 1
                }
            }
        }

        return result
    }
}