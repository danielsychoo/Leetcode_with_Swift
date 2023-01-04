class Solution {

    func finalValueAfterOperations(_ operations: [String]) -> Int {
    
        var result = 0
        operations.forEach {
            if $0.contains("+") { result += 1 }
            else { result -= 1 }
        }

        return result
    }
}