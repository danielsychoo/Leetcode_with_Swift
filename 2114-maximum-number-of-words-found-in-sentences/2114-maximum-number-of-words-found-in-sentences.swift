class Solution {

    func mostWordsFound(_ sentences: [String]) -> Int {
    
        var maxCount = 0
        sentences.forEach {
            maxCount = max(maxCount, $0.filter { $0 == " " }.count)
        }

        return maxCount+1
    }
}