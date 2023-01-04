class Solution {

    func sumOfUnique(_ nums: [Int]) -> Int {
    
        var dict: [Int: Int] = [:]
        nums.forEach {
            if let _ = dict[$0] { dict[$0]! += 1 }
            else { dict[$0] = 1 }
        }

        let list = dict.filter({ $0.value == 1 }).keys

        return list.reduce(0) { $0 + $1 }
    }
}