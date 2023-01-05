class Solution {

    func minimumSum(_ num: Int) -> Int {
        let str = "\(num)".sorted()
        let num1 = Int("\(str[0])\(str[3])")!
        let num2 = Int("\(str[1])\(str[2])")!

        return num1 + num2
    }
}