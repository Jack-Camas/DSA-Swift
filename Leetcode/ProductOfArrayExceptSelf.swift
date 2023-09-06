/*
 238. Product of Array Except Self

 Given an integer array nums, return an array answer such that answer[i] is equal to the product of all the elements of nums except nums[i].
 The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.
 You must write an algorithm that runs in O(n) time and without using the division operation.

  
 Example 1:
 Input: nums = [1,2,3,4]
 Output: [24,12,8,6]
 
 Example 2:
 Input: nums = [-1,1,0,-3,3]
 Output: [0,0,9,0,0]
 */


class Solution {
	func productExceptSelf(_ nums: [Int]) -> [Int] {
		var leftProduct = Array(repeating: 1, count: nums.count)
		var rightProduct = Array(repeating: 1, count: nums.count)
		var answer = Array(repeating: 1, count: nums.count)
		
		var product = 1
		for i in 0..<nums.count {
			leftProduct[i] = product
			product = product * nums[i]
		}
		
		product = 1
		for i in (0..<nums.count).reversed() {
			rightProduct[i] = product
			product = product * nums[i]
		}
		
		for i in 0..<nums.count {
			answer[i] = leftProduct[i] * rightProduct[i]
		}
		return answer
	}
}
