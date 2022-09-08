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
    func leafSimilar(_ root1: TreeNode?, _ root2: TreeNode?) -> Bool {
        var list1: [Int] = []
        getLeafVal(root1, &list1)
        
        var list2: [Int] = []
        getLeafVal(root2, &list2)
        
        return list1 == list2
    }
    
    func getLeafVal(_ tree: TreeNode?, _ list: inout [Int]) {
        guard let tree = tree else { return }
        
        if tree.left == nil && tree.right == nil { list.append(tree.val) }
        if tree.left != nil { getLeafVal(tree.left, &list) }
        if tree.right != nil { getLeafVal(tree.right, &list) }
        
        return
    }
}