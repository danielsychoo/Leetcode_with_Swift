class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var firstIdx = 0

        func test() -> [Int] {
            for i in firstIdx+1..<nums.count {
                if nums[firstIdx] + nums[i] == target {
                    return [firstIdx, i]
                }
            }

            firstIdx += 1
            return test()
        }

        return test()
    }
}