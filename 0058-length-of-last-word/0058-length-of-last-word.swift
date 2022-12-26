class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        let word = s.split(separator: " ").last
        return word?.count ?? 0
    }
}