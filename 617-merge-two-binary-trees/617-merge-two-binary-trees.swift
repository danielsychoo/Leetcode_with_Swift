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
    func mergeTrees(_ root1: TreeNode?, _ root2: TreeNode?) -> TreeNode? {
        guard let tree1 = root1, let tree2 = root2 else {
                   return root1 == nil ? root2 : root1
              }
        
        let result = TreeNode((tree1.val) + (tree2.val))
        result.left = mergeTrees(tree1.left, tree2.left)
        result.right = mergeTrees(tree1.right, tree2.right)
        
        return result
    }
}