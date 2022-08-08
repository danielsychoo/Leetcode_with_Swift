class Solution {
    func numDifferentIntegers(_ word: String) -> Int {
        var set = Set<String>()
        var temp = ""
        word.forEach {
            if let number = Int(String($0)) {
                if number == 0 {
                    if temp == "0" { return }
                    else { temp += String(number) }
                } else {
                    if temp == "0" { temp = String(number) }
                    else { temp += String(number) }
                }
            } else {
                if !temp.isEmpty {
                    set.insert(temp)
                    temp = ""
                }
            }
        }

        if !temp.isEmpty { set.insert(temp) }

        return set.count
    }
}