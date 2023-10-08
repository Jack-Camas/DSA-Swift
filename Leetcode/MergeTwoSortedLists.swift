/*
 
 21. Merge Two Sorted Lists
 
 You are given the heads of two sorted linked lists list1 and list2.
 Merge the two lists into one sorted list. The list should be made by 
 splicing together the nodes of the first two lists.
 Return the head of the merged linked list.
 
 Example 1:
 Input: list1 = [1,2,4], list2 = [1,3,4]
 Output: [1,1,2,3,4,4]
 
 Example 2:
 Input: list1 = [], list2 = []
 Output: []
 
 Example 3:
 Input: list1 = [], list2 = [0]
 Output: [0]
 */


/*
   Definition for singly-linked list.
   public class ListNode {
       public var val: Int
       public var next: ListNode?
       public init() { self.val = 0; self.next = nil; }
       public init(_ val: Int) { self.val = val; self.next = nil; }
       public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
   }
 */

class Solution {
	func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
		let dummy = ListNode(0)
		var current: ListNode? = dummy

		var listNode1 = list1
		var listNode2 = list2

		while listNode1 != nil && listNode2 != nil {
			if listNode1!.val < listNode2!.val {
				current?.next = listNode1
				listNode1 = listNode1?.next
			} else {
				current?.next = listNode2
				listNode2 = listNode2?.next
			}
			current = current?.next
		}

		if listNode1 != nil {
			current?.next = listNode1
		}

		if listNode2 != nil {
			current?.next = listNode2
		}
		return dummy.next
	}
}
