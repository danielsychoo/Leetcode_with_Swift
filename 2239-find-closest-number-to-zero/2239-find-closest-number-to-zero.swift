class Solution {
    func findClosestNumber(_ nums: [Int]) -> Int {
        let sorted = nums.sorted()

        if let positivePointIdx = sorted.firstIndex(where: { $0 > 0 }) {

            if positivePointIdx == 0 { /// nums가 모두 양수인 경우 `첫번째`
                return sorted[0]
            } else { /// nums에 양수, 음수가 혼재하는 경우

                let positiveValue = sorted[positivePointIdx]
                let negativeValue = sorted[positivePointIdx-1]

                if positiveValue <= abs(negativeValue) { return positiveValue }
                else { return negativeValue }

            }

        } else { /// nums가 모두 음수인 경우 `마지막`
            return sorted[sorted.count-1]
        }
    }
}