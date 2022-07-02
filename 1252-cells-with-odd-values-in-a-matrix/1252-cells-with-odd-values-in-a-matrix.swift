class Solution {
    func oddCells(_ m: Int, _ n: Int, _ indices: [[Int]]) -> Int {
        let inner = [Int](repeating: 0, count: n)
        var matrix = [[Int]](repeating: inner, count: m)

        for item in indices {
            let r = item[0]
            let c = item[1]

            matrix[r] = matrix[r].map { $0 + 1 }

            for i in 0 ..< matrix.count {
                matrix[i][c] += 1
            }
        }

        var result = 0

        for item in matrix {
            result += item.filter { $0 % 2 != 0 }.count
        }

        return result
    }
}