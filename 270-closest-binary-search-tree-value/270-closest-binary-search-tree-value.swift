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

import Foundation

class Solution {
    func closestValue(_ root: TreeNode?, _ target: Double) -> Int {
        var result = 99999
        move(root, target, &result)
        
        return result
    }
    
    func move(_ node: TreeNode?, _ target: Double, _ result: inout Int) {
        guard let node = node else { return }

        result = findValue(target, node.val, result)
        
        if node.left != nil { move(node.left, target, &result) }
        if node.right != nil { move(node.right, target, &result) }
        
        return
    }
    
    func findValue(_ target: Double, _ value: Int, _ result: Int) -> Int {
        if (abs(target - Double(value)) >= abs(target - Double(result))) { return result }
        else { return value }
    }
}