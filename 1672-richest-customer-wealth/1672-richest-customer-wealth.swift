class Solution {

    func maximumWealth(_ accounts: [[Int]]) -> Int {
    
        var result = 0
        accounts.forEach { account in
            result = max(result, account.reduce(0, { $0 + $1 }))
        }

        return result
    }
}