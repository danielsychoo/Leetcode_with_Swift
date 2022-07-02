class Solution {
    func checkStraightLine(_ coordinates: [[Int]]) -> Bool {
        // edgeCase
        if coordinates.count == 1 { return false }
        if coordinates.count == 2 { return true }

        let firstX = coordinates[0][0]
        let firstY = coordinates[0][1]
        let xDist = coordinates[1][0] - firstX
        let yDist = coordinates[1][1] - firstY

        for i in 1 ... coordinates.count - 1 {
            let x = coordinates[i][0]
            let y = coordinates[i][1]

            if xDist * (y - firstY) != yDist * (x - firstX) { return false }
        }

        return true
    }
}