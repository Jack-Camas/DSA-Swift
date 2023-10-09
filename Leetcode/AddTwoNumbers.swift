/*
 2. Add Two Numbers

 You are given two non-empty linked lists representing two non-negative
 integers. The digits are stored in reverse order, and each of their nodes
 contains a single digit. Add the two numbers and return the sum as a linked list.

 You may assume the two numbers do not contain any leading zero, except the 
 number 0 itself.
 
 Example 1:
 Input: l1 = [2,4,3], l2 = [5,6,4]
 Output: [7,0,8]
 Explanation: 342 + 465 = 807.
 
 Example 2:
 Input: l1 = [0], l2 = [0]
 Output: [0]
 
 Example 3:
 Input: l1 = [9,9,9,9,9,9,9], l2 = [9,9,9,9]
 Output: [8,9,9,9,0,0,0,1]
 
 */
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
	func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {

		var dummy = ListNode()
		var current: ListNode? = dummy
		var listNode1 = l1
		var listNode2 = l2
		var carry = 0

		while listNode1 != nil || listNode2 != nil  || carry > 0 {
			var value1 = 0
			var value2 = 0
			
			if let v1 = listNode1?.val {
				 value1 = v1
				 listNode1 = listNode1?.next
			} else {
				 value1 = 0
			}

			 if let v2 = listNode2?.val {
				 value2 = v2
				 listNode2 = listNode2?.next
			} else {
				 value2 = 0
			}
			
			var add = value1 + value2 + carry
			carry = add / 10
			add = add % 10
			var tempNode = ListNode(add)
			current?.next = tempNode
			current = current?.next
		}
		return dummy.next
	}
}
