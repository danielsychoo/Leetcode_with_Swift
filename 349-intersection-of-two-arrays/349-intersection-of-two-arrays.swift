class Solution {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        let set1 = Set(nums1)
        let set2 = Set(nums2)
        var result: [Int] = []

        if set1.count >= set2.count {
            set2.forEach { item in
                if let value = set1.first(where: { $0 == item }) {
                    result.append(value)
                }
            }
        } else {
            set1.forEach { item in
                if let value = set2.first(where: { $0 == item }) {
                    result.append(value)
                }
            }
        }

        return result
    }
}