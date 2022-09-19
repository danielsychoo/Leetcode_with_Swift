class Solution {
    func isConsecutive(_ nums: [Int]) -> Bool {
        let sorted = nums.sorted()
        for i in 1 ..< sorted.count {
            if sorted[i] - sorted[i-1] != 1 { return false }
        }

        return true
    }
}