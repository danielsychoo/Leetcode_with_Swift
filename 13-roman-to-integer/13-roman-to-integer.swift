/*
 1. 문자를 쭉 읽으며 앞의 수가 더 크면 그대로
 2. 앞의 수가 더 작으면 (-앞의 수 + 뒤의 수)
 3. 변환결과를 더함
 */

class Solution {
    func romanToInt(_ s: String) -> Int {
        let arr = Array(s).map { convertToInt($0) }

        var result = 0
        var i = 1
        while arr.count >= i {

            if arr.count == i {
                result += arr[arr.count-1]
                break
            }

            if arr[i] > arr[i-1] {
                result += (arr[i] - arr[i-1])
                i += 2
            } else {
                result += arr[i-1]
                i += 1
            }
        }

        return result
    }

    func convertToInt(_ symbol: Character) -> Int {
        switch symbol {
        case "I":
            return 1
        case "V":
            return 5
        case "X":
            return 10
        case "L":
            return 50
        case "C":
            return 100
        case "D":
            return 500
        default:
            return 1000
        }
    }
}