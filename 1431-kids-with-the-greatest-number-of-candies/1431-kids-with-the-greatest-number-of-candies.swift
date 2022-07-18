class Solution {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        var result: [Bool] = []
        for item in candies {
            // let added = item + extraCandies

            if candies.filter { item + extraCandies < $0 }.isEmpty { result.append(true) }
            else { result.append(false) }
        }

        return result
    }
}