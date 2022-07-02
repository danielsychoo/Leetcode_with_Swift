class Solution {
    func baseNeg2(_ n: Int) -> String {
        let s = 0xAAAAAAAA

        return String((n + s) ^ s, radix: 2)
    }
}