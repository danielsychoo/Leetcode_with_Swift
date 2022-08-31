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
    func minDepth(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        
        var minDepth: Int = 100000
        var depth = 1
        var nodeList = [root]
        
        while !nodeList.isEmpty {
            for i in 0 ..< nodeList.count {
                let currentNode = nodeList.removeFirst()
                
                if currentNode.left == nil && currentNode.right == nil { minDepth = min(depth, minDepth) }
                if let leftChildNode = currentNode.left { nodeList.append(leftChildNode) }
                if let rightChildNode = currentNode.right { nodeList.append(rightChildNode) }
            }
            
            depth += 1
        }
        
        return minDepth
    }
}