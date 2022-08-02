class Solution {
    func surfaceArea(_ grid: [[Int]]) -> Int {
        var count: Int = 0

        (0 ..< grid.count).forEach { row in
            (0 ..< grid.count).forEach { column in
                if grid[row][column] > 0 { count += 2 + (grid[row][column] * 4) }
                if row > 0 { count -= min(grid[row-1][column], grid[row][column]) * 2 }
                if column > 0 { count -= min(grid[row][column-1], grid[row][column]) * 2 }
            }
        }

        return count
    }
}