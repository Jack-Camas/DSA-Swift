/*
 15. 3Sum
 
 Given an integer array nums, return all the triplets [nums[i], nums[j], nums[k]] such that i != j, i != k, and j != k, and nums[i] + nums[j] + nums[k] == 0.

 Notice that the solution set must not contain duplicate triplets.

  

 Example 1:

 Input: nums = [-1,0,1,2,-1,-4]
 Output: [[-1,-1,2],[-1,0,1]]
 Explanation:
 nums[0] + nums[1] + nums[2] = (-1) + 0 + 1 = 0.
 nums[1] + nums[2] + nums[4] = 0 + 1 + (-1) = 0.
 nums[0] + nums[3] + nums[4] = (-1) + 2 + (-1) = 0.
 The distinct triplets are [-1,0,1] and [-1,-1,2].
 Notice that the order of the output and the order of the triplets does not matter.
 Example 2:

 Input: nums = [0,1,1]
 Output: []
 Explanation: The only possible triplet does not sum up to 0.
 Example 3:

 Input: nums = [0,0,0]
 Output: [[0,0,0]]
 Explanation: The only possible triplet sums up to 0.
 */

/*
 Time complexity: o(n^2)
 Space complexity 0(n)
 */

class Solution {
	func threeSum(_ nums: [Int]) -> [[Int]] {
		var result = Set<[Int]>()
		var sortNums = nums.sorted()
		
		for i in 0..<sortNums.count {
			var j = i + 1
			var k = sortNums.count - 1
			
			while j < k {
				let sum = sortNums[i] + sortNums[j] + sortNums[k]
				if sum == 0 {
					result.insert([sortNums[i], sortNums[j], sortNums[k]])
					j += 1
					k -= 1
				} else if sum > 0 {
					k -= 1
				} else {
					j += 1
				}
			}
		}
		return Array(result)
	}
}
