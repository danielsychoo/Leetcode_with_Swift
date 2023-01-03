class Solution {

    func buildArray(_ nums: [Int]) -> [Int] {

        var result = nums

        for i in 0...nums.count-1 {
            let num = nums[nums[i]]
            if result[i] != num { result[i] = num }
        }

        return result
    }
}