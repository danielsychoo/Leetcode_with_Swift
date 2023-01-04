class Solution {

    func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
    
        var count = 0
        jewels.forEach {
            var jewel = $0
            count += stones.count - stones.filter { $0 != jewel }.count
        }

        return count
    }
}