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
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        
        var valueList: [Int] = []
        
        var ls1 = list1
        while ls1?.val != nil {
            if let val = ls1?.val { valueList.append(val) }
            ls1 = ls1?.next
        }
        
        var ls2 = list2
        while ls2?.val != nil {
            if let val = ls2?.val { valueList.append(val) }
            ls2 = ls2?.next
        }
        
        return valueList.isEmpty ? nil : self.makeListNode(valueList.sorted())
    }
    
    private func makeListNode(_ valueList: [Int]) -> ListNode {
        
        var list = valueList
        var result: ListNode = .init(list.removeLast())
        
        while list.isEmpty == false {
            var temp: ListNode = .init(list.removeLast())
            temp.next = result
            result = temp
        }
            
        return result
    }
}