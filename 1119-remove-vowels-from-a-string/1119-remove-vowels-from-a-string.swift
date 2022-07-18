class Solution {
    func removeVowels(_ s: String) -> String {
        var arr = Array(s)
        let vowels: [Character] = ["a", "e", "i", "o", "u"]

        for item in vowels {
            arr = arr.filter { $0 != item }
        }

        return String(arr)
    }
}