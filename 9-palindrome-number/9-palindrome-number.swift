class Solution {   
    func isPalindrome(_ x: Int) -> Bool {
    
    let arr = Array(String(x))
    var left = 0
    var right = arr.count - 1

    while left < right {
        if arr[left] != arr[right] { return false }

        left += 1
        right -= 1
    }

    return true
}
}