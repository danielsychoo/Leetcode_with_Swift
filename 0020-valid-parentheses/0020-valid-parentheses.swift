class Solution {
    func isValid(_ s: String) -> Bool {

        if s.count % 2 != 0 { return false } /// 길이가 홀수면 짝이 안맞으므로 false

        var stack: [Character] = []
        for cha in s {
            switch cha {
            case "(": stack.append(")")
            case "{": stack.append("}")
            case "[": stack.append("]")
            default:
                if stack.isEmpty || stack.removeLast() != cha {
                    return false
                }
            }
        }

        return stack.isEmpty
    }
}