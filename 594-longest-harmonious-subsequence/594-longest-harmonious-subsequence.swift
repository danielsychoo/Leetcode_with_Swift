class Solution {
    func findLHS(_ nums: [Int]) -> Int {
        var dict: [Int:Int] = [:]
        nums.forEach {
            if dict[$0] == nil { dict[$0] = 1 }
            else { dict[$0]! += 1 }
        }

        var count = 0
        var max = 0
        dict.keys.forEach {
            if dict[$0 + 1] != nil {
                count = dict[$0]! + dict[$0 + 1]!

                if count > max { max = count }
            }
        }

        return max
    }
}