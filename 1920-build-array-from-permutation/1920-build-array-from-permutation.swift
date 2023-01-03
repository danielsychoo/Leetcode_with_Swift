class Solution {
    
    func buildArray(_ nums: [Int]) -> [Int] {
    
        var result = nums

        for i in 0...nums.count-1 {
            if result[i] != nums[nums[i]] { result[i] = nums[nums[i]] }
        }

        return result
    }

//     func buildArray(_ nums: [Int]) -> [Int] {

//         var result: [Int] = []

//         for i in 0...nums.count-1 {
//             result.append(nums[nums[i]])
//         }

//         return result
//     }
}