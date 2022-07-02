class Solution {
    func minimumMoves(_ s: String) -> Int {
        var arr = s.map { String($0) }
        var index = 0
        var result = 0

        while index < arr.count {
            if arr[index] == "O" {
                index += 1
            } else {
                arr[index] = "X"

                if index + 1 < arr.count { arr[index + 1] = "O" }
                if index + 2 < arr.count { arr[index + 2] = "O" }
                result += 1

                index += 3
            }
        }

        return result
    }
}