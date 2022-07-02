class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var max = 0
        var chars: [Character] = []

        let arr = Array(s)
        let length = s.count

        for i in 0..<length {
            let char = arr[i]

            if let same_char_index = chars.firstIndex(of: char) {
                chars = Array(chars[(same_char_index+1)..<chars.count])
            }
            chars.append(char)
            max = chars.count > max ? chars.count : max
        }

        return max
    }
}