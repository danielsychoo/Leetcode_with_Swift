class Solution {
    func mergeSimilarItems(_ items1: [[Int]], _ items2: [[Int]]) -> [[Int]] {
        var dict: [Int:Int] = [:]

        items1.forEach { item in
            if dict[item[0]] != nil { dict[item[0]]! += item[1] }
            else { dict[item[0]] = item[1] }
        }

        items2.forEach { item in
            if dict[item[0]] != nil { dict[item[0]]! += item[1] }
            else { dict[item[0]] = item[1] }
        }

        return dict.keys.sorted().map { [$0, dict[$0]!] }
    }
}