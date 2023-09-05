/*
 11. Container With Most Water
 
 You are given an integer array height of length n. There are n vertical lines drawn such that the two endpoints of the ith line are (i, 0) and (i, height[i]).

 Find two lines that together with the x-axis form a container, such that the container contains the most water.

 Return the maximum amount of water a container can store.

 Notice that you may not slant the container.

  
 */


/*
 Time complexity = o(n)
 Space complexity = o(1)
 */
class Solution {
	func maxArea(_ height: [Int]) -> Int {
		var left = 0
		var right = height.count - 1
		var maxAmount = 0
		
		while left < right {
			let currentMin = (right - left) * min(height[left], height[right])
			maxAmount = max(maxAmount, currentMin)
			
			if  height[left] < height[right] {
				left += 1
			} else {
				right -= 1
			}
		}
		return maxAmount
	}
}
