class Solution {
    func climbStairs(_ n: Int) -> Int {
        return self.fibonacci(n + 1)
    }
    
    private func fibonacci(_ n: Int) -> Int {
        var cache: [Int] = [0, 1]

        guard n > 1 else { return n }

        for num in 2...n {
            cache.append(cache[num-2] + cache[num-1])
        }

        return cache[n]
    }
}