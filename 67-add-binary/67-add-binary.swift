class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        let arrA = a.reversed().map { String($0) }, arrB = b.reversed().map { String($0) }
        let max = arrA.count > arrB.count ? arrA.count : arrB.count
        var result: [String] = []

        for i in 0 ..< max {
            let num1 = arrA.count > i ? Int(arrA[i])! : 0 /// 만일 count가 max보다 작으면 0
            let num2 = arrB.count > i ? Int(arrB[i])! : 0
            let preservedValue = result.count > i ? Int(result[i])! : 0 /// 이전에 더해서 넘긴 값
            let value = preservedValue + num1 + num2


            if (value >= 2) {
                result.count > i ? result[i] = String(value % 2) : result.insert(String(value % 2), at: i) /// 이미 있으면 바꾸고 아니면 추가
                result.append("1") /// 넘김 (preservedValue)
            }
            else {
                result.count > i ? result[i] = String(value) : result.insert(String(value), at: i)
            }
        }

        return result.reversed().joined()
    }
}