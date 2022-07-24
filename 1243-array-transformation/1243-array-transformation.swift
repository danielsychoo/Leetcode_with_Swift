class Solution {
    func transformArray(_ arr: [Int]) -> [Int] {
        var before: [Int] = []
        var compare = arr
        var current = arr

        let count = arr.count - 1
        var i = 2

        while before != current {
            before = current
            compare = current
            i = 2

            while i <= count {
                let left = i - 2
                let middle = i - 1
                let right = i

                if compare[left] < compare[middle] && compare[right] < compare[middle] { current[middle] -= 1 }
                else if compare[left] > compare[middle] && compare[right] > compare[middle] { current[middle] += 1 }

                i += 1
            }
        }

        return current
    }
}