class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        let sortedNums = nums.sorted() /// 소팅 못 없애누..?

        var index = 0
        while index < sortedNums.count {
            if index == sortedNums.count-1 || sortedNums[index] != sortedNums[index+1] {
                return sortedNums[index]
            }

            index += 2
        }

        return 0
    }
}