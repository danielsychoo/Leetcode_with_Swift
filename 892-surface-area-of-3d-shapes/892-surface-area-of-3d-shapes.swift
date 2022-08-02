class Solution {
    func surfaceArea(_ grid: [[Int]]) -> Int {
    var count: Int = 0
    
    (0 ..< grid.count).forEach { row in
        (0 ..< grid.count).forEach { column in
            let current = grid[row][column]
            
            if grid[row][column] > 0 {
                count += (current * 4) + 2
            }
            
            if row > 0 {
                let beforeRow = grid[row - 1][column]
                count -= min(beforeRow, current) * 2
            }
            
            if column > 0 {
                let beforeColumn = grid[row][column-1]
                count -= min(beforeColumn, current) * 2
            }
        }
    }
    
    return count
}
}