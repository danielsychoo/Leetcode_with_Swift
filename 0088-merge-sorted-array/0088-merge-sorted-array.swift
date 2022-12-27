class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {

        let list1 = nums1[0..<m]
        let list2 = nums2[0..<n]

        let result = list1 + list2
        nums1 = result.sorted()
    }
}