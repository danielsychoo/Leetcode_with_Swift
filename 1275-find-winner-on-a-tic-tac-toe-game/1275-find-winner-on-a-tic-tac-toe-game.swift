class Solution {
    enum Result: String {
        case a = "A"
        case b = "B"
        case draw = "Draw"
        case pending = "Pending"
    }

    let winningCases = [ /// 이기는 경우
        [[0,0], [0,1], [0,2]], [[1,0], [1,1], [1,2]], [[2,0], [2,1], [2,2]], /// 가로
        [[0,0], [1,0], [2,0]], [[0,1], [1,1], [2,1]], [[0,2], [1,2], [2,2]], /// 세로
        [[0,0], [1,1], [2,2]], [[0,2], [1,1], [2,0]] /// 대각선
    ]

    func tictactoe(_ moves: [[Int]]) -> String {
        var playerA: [[Int]] = []
        var playerB: [[Int]] = []
        for (index, move) in moves.enumerated() {
            if index % 2 == 0 { playerA.append(move) }
            else { playerB.append(move) }
        }

        for `case` in winningCases {
            var countA = 0
            var countB = 0
            for point in playerA {
                if let _ = `case`.first(where: { $0 == point}) { countA += 1 }
                if countA == 3 { return Result.a.rawValue }
            }

            for point in playerB {
                if let _ = `case`.first(where: { $0 == point}) { countB += 1 }
                if countB == 3 { return Result.b.rawValue }
            }
        }

        if moves.count == 9 { return Result.draw.rawValue }
        else { return Result.pending.rawValue }
    }
}