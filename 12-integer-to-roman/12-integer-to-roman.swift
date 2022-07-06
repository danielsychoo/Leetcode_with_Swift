/*
 1. func intToRoman -- edgeCase 처리, num을 Int배열로 변경
 2. func outerCalculate -- num의 자릿수에 따라 연산 분기
 3. func innerCalculate -- 각 자릿수에 Symbol 연산
 */

class Solution {
    func intToRoman(_ num: Int) -> String {

        let temp = Array(String(num))
        let arr = temp.map { Int(String($0))! }

        return outerCalculate(arr)
    }

    func outerCalculate(_ arr: [Int]) -> String {
        var result = ""

        switch arr.count { /// 자릿수에 따라 분기
        case 4:
            for _ in 1 ... arr[0] {
                result += "M"
            }
            result += innerCalculate(from: (100, arr[1]))
            result += innerCalculate(from: (10, arr[2]))
            result += innerCalculate(from: (1, arr[3]))
        case 3:
            result += innerCalculate(from: (100, arr[0]))
            result += innerCalculate(from: (10, arr[1]))
            result += innerCalculate(from: (1, arr[2]))
        case 2:
            result += innerCalculate(from: (10, arr[0]))
            result += innerCalculate(from: (1, arr[1]))
        default:
            result += innerCalculate(from: (1, arr[0]))
        }

        return result
    }

    func innerCalculate(from value: (Int, Int)) -> String { /// (자리수, 값)
        if value.1 == 0 { return "" } /// 0이면 연산 ㄴㄴ

        var symbols: [String] = [] /// 자리수에 따라 사용될 symbol들
        switch value.0 {
        case 100:
            symbols = ["C", "CD", "D", "CM"]
        case 10:
            symbols = ["X", "XL", "L", "XC"]
        default:
            symbols = ["I", "IV", "V", "IX"]
        }

        var result = ""

        if value.1 < 4 { /// 연산
            for _ in 1 ... value.1 {
                result += symbols[0]
            }
        } else if value.1 == 4 {
            result += symbols[1]
        } else if value.1 == 5 {
            result += symbols[2]
        } else if value.1 == 9 {
            result += symbols[3]
        } else {
            result += symbols[2]

            for _ in 1 ... value.1 - 5 {
                result += symbols[0]
            }
        }

        return result
    }
}