/*
 169. Majority Element
 
 Given an array nums of size n, return the majority element.
 The majority element is the element that appears more than ⌊n / 2⌋ times. You may assume that the majority element always exists in the array.

  

 Example 1:
 Input: nums = [3,2,3]
 Output: 3
 
 Example 2:
 Input: nums = [2,2,1,1,1,2,2]
 Output: 2
 */


/*
 Time Complexity = o(n)
 Space Complexity = o(n)
 */
class Solution {
	func majorityElement(_ nums: [Int]) -> Int {
		var dict = [Int:Int]()
		
		for i in 0..<nums.count {
			if let count = dict[nums[i]] {
				dict[nums[i]] = count + 1
			} else {
				dict[nums[i]] = 1
			}
		}

		var majority = 0
		var highestValue = 0
		for (key, value) in dict {
			if value > highestValue {
				highestValue = value
				majority  = key
			}
		}
		return majority
	}
}

/*
 In order to optimize this problem we are able to use the
 Boyer-Moore majority voring algorithm to achieve.
 Time Complexity = o(n)
 Space complexity = o(1)
 */

class Solution {
	func majorityElement(_ nums: [Int]) -> Int {
		var majority =  0
		var count = 0
		
		for i in 0..<nums.count {
			if count == 0 {
				majority = nums[i]
			} else if majority == nums[i] {
				count += 1
			} else {
				count -= 1
			}
		}
		return majority
	}
}
