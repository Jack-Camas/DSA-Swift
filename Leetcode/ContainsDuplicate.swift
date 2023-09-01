/*
 217. Contains Duplicate
 Given an integer array nums, return true if any value appears at least twice
 in the array, and return false if every element is distinct.
 
 
 Example 1:
 Input: nums = [1,2,3,1]
 Output: true
 
 Example 2:
 Input: nums = [1,2,3,4]
 Output: false
 
 Example 3:
 Input: nums = [1,1,1,3,3,4,3,2,4,2]
 Output: true
 */


/*
 This is my first brute force apprioach
 Time complexity = o(n^2)
 Space complexity = o(1)
 */
class Solution {
	func containsDuplicate(_ nums: [Int]) -> Bool {

		for i in 0..<nums.count {
			for j in i+1..<nums.count {
				if nums[i] == nums[j] {
					return true
				}
			}
		}
		return false
	}
}


/*
 We can further optimize our previous apprach by using a dictionary
 Time Complexity = o(n)
 Space Complexity = o(n)
 */
class Solution {
	func containsDuplicate(_ nums: [Int]) -> Bool {

		var dict = [Int:Int]()

		for num in nums {
			if let value = dict[num] {
				return true
			} else {
				dict[num] = num
			}
		}
		return false
	}
}

/*
 Since we are asked to return a bool if every element if distinct we can
 take advantage of the unique functionality that come with Sets
 Time Complexity = o(n)
 Space Complexity = o(n)
 */
class Solution {
	func containsDuplicate(_ nums: [Int]) -> Bool {
		return Set(nums).count != nums.count
	}
}
