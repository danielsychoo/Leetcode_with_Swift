class Solution {
    func countOdds(_ low: Int, _ high: Int) -> Int {
        var num = (low % 2 != 0) ? (low) : (low + 1)
        var count = 0


        while num <= high {
            num += 2
            count += 1
        }
        return count
    }
}