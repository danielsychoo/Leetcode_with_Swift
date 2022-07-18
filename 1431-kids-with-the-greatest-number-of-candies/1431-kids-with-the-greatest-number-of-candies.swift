class Solution {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        var result: [Bool] = []
        for item in candies {
            let added = item + extraCandies
            let filtered = candies.filter { added < $0 }

            print(filtered)

            if filtered.isEmpty { result.append(true) }
            else { result.append(false) }
        }

        return result
    }
}