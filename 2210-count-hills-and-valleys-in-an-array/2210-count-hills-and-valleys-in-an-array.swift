class Solution {
    func countHillValley(_ nums: [Int]) -> Int {
        var result = 0
        var keep = ""

        for i in 1 ..< nums.count - 1 {
            let left = nums[i - 1]
            let current = nums[i]
            let right = nums[i + 1]

            if left < current {
                if current > right { result += 1 }
                if current == right { keep = "up" }
            }
            else if left > current {
                if current < right { result += 1 }
                if current == right { keep = "down" }
            }
            else if keep == "up" {
                if current == right { continue }
                if current > right {
                    result += 1
                    keep = ""
                }
            }
            else if keep == "down" {
                if current == right { continue }
                if current < right {
                    result += 1
                    keep = ""
                }
            }
        }

        return result
    }
}