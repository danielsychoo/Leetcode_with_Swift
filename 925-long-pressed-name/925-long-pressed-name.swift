class Solution {
    
    func isLongPressedName(_ name: String, _ typed: String) -> Bool {

        // edgeCase
        if name.first != typed.first {
            return false
        }
        if Set(name).count == 1 && Set(typed).count == 1 && name.first == typed.first { return true }

        var m = 1
        var over = 0
        for i in 1..<typed.count {
            let currentTyped = getCharacter(typed, with: i)
            let currentName = getCharacter(name, with: m)
            let beforeName = getCharacter(name, with: m-1)

            if currentTyped == currentName { m += 1 }
            else if currentTyped == beforeName {
                over += 1
                continue
            }
            else { return false }
        }

        if m > name.count { return (m - over) <= name.count }
        else { return m == name.count }
    }

    func getCharacter(_ string: String, with i: Int) -> Character {
        if i > string.count-1 {
            return string.last!
        } else {
            let index = string.index(string.startIndex, offsetBy: i)
            return string[index]
        }
    }
}