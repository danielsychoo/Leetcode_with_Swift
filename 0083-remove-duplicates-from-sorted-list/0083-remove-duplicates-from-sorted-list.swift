/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        guard let head = head else { return head }
        
        var node = head
        
        while node != nil && node.next != nil {
            
            if node.next?.val == node.val {
                node.next = node.next?.next
            } else {
                node = node.next!
            }
        }
        
        return head
    }
    
    // var deleteDuplicates = function(head) {
    //     if(head===null) return head;
    //     let node  = head;
    //     while(node && node.next) {
    //         if(node.next.val === node.val) {
    //             node.next = node.next.next
    //         }else {
    //             node = node.next
    //         }
    //     }
    //     return head;
    // };
    
//     func recursive(
//         _ node: ListNode?,
//         with result: inout ListNode?
//     ) {
//         guard let node = node,
//               let nextNode = node.next else { return }
        
//         if node.val == nextNode.val {
            
//             if let doubleNextNode = nextNode.next {
//                 node.next = doubleNextNode
                
//                 if let result = result { result.next = node }
//                 else { result = node }
                
//                 recursive(nextNode, with: &result)
//             } else {
//                 node.next = nil
                
//                 if let result = result { result.next = node }
//                 else { result = node }
//             }
            
//         } else {
//             recursive(nextNode, with: &result)
//         }
//     }
}