class Solution {
    func checkAlmostEquivalent(_ word1: String, _ word2: String) -> Bool {
        var dict: [Character: Int] = [:]
        word1.forEach { character in
            if let _ = dict[character] { dict[character]! += 1 }
            else { dict[character] = 1 }
        }

        word2.forEach { character in
            if let _ = dict[character] { dict[character]! -= 1 }
            else { dict[character] = -1 }
        }

        if let _ = dict.values.first(where: { abs($0) > 3 }) { return false }
        else { return true }
    }
}