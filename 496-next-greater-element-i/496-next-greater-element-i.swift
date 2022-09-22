class Solution {
    func nextGreaterElement(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        return nums1.map {
            var index = nums2.firstIndex(of: $0)! + 1

            while index < nums2.count {
                if nums2[index] > $0 { return nums2[index] }
                else { index += 1 }
            }

            return -1
        }
    }
}