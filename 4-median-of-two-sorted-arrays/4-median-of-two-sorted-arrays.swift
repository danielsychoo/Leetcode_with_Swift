class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {

        let arr = (nums1 + nums2).sorted() // 합치고 정렬

        if(arr.count % 2 == 0) {
            let left = (arr.count / 2) - 1
            let right = arr.count / 2

            return Double(arr[left] + arr[right]) / 2

        } else {
            return Double(arr[arr.count / 2])
        }

    }
}