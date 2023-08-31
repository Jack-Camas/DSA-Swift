/*
 1. Two Sum
 
 Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
 You may assume that each input would have exactly one solution, and you may not use the same element twice.
 You can return the answer in any order.
 
 Example 1:

 Input: nums = [2,7,11,15], target = 9
 Output: [0,1]
 Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
 
 Example 2:
 Input: nums = [3,2,4], target = 6
 Output: [1,2]
 
 Example 3:
 Input: nums = [3,3], target = 6
 Output: [0,1]
*/



/*
My first immediate approach will be relying on a brute force method
Time complexity = o(n^2)
Space complexity = 0(1)
*/
class Solution {
	func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
		
		for i in 0..<nums.count {
			for j in i+1..<nums.count {
				if nums[i] + nums[j] == target {
					return [i,j]
				}
			}
		}
		return []
	}
}

/*
This is a second approach optimizing the time complexity to o(n).
 
To achieve better time complexity we will make use of a dictionary
We can think of it like storing the values we have already met
and finding the complementary value/solving for x
 
Time complexity = o(n)
Space complexity = 0(n) // since we are using a dictionary
 */
class Solution {
	func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
		
		var dict = [Int:Int]()
		
		//Can also use enumerated to better keep track of the (index,values)
		for i in 0..<nums.count {
			let x = target - nums[i]
			
			if let indexFound = dict[x] {
				return [indexFound, i]
			} else {
				dict[nums[i]] = i
			}
		}
		return []
	}
}

