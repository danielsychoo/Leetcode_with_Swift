class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        
        // edgeCase
        if strs.isEmpty == true { return "" }
        
        var minStr = (strs.min{ $0.count < $1.count })! /// 가장 짧은 str 찾기
        
        for str in strs {
            while !str.hasPrefix(minStr) {
                minStr.removeLast() /// 맨 끝 자름
            }
        }
        
        return minStr
    }
}