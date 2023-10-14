/*
 
 62. Unique Paths

 There is a robot on an m x n grid. The robot is initially located at
 the top-left corner (i.e., grid[0][0]). The robot tries to move 
 to the bottom-right corner (i.e., grid[m - 1][n - 1]). The robot
 can only move either down or right at any point in time.

 Given the two integers m and n, return the number of possible unique 
 paths that the robot can take to reach the bottom-right corner.

 The test cases are generated so that the answer will be less than or 
 equal to 2 * 109.
 
 Example 1:
 Input: m = 3, n = 7
 Output: 28
 
 Example 2:
 Input: m = 3, n = 2
 Output: 3
 Explanation: From the top-left corner, there are a total of 3
 ways to reach the bottom-right corner:
 
 1. Right -> Down -> Down
 2. Down -> Down -> Right
 3. Down -> Right -> Down
 */


class Solution {
	func uniquePaths(_ m: Int, _ n: Int) -> Int {
		var arr = Array(repeating: Array(repeating: 1, count: n), count: m)
		
		for i in 1..<m {
			for j in 1..<n {
				let up = arr[i - 1][j]
				let left = arr[i][j - 1]
				arr[i][j] = up + left
			}
		}
		return arr[m - 1][n - 1]
	}
}
