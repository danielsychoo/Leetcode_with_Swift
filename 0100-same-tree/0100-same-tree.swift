/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {

        var pArr: [Int] = []
        var qArr: [Int] = []
        seekDeeper(p, &pArr)
        seekDeeper(q, &qArr)

        return pArr == qArr
    }

    func seekDeeper(_ node: TreeNode?,_ arr: inout [Int]) {

        arr.append(node?.val ?? -1)

        if node?.left != nil { seekDeeper(node?.left, &arr) }
        else { arr.append(-5) }
        if node?.right != nil { seekDeeper(node?.right, &arr) }
        else { arr.append(-5) }
    }
}