/*
 3. Longest Substring Without Repeating Characters
 Given a string s, find the length of the longest substring
 without repeating characters.
 
 Example 1:
 Input: s = "abcabcbb"
 Output: 3
 Explanation: The answer is "abc", with the length of 3.
 
 Example 2:
 Input: s = "bbbbb"
 Output: 1
 Explanation: The answer is "b", with the length of 1.
 
 Example 3:
 Input: s = "pwwkew"
 Output: 3
 Explanation: The answer is "wke", with the length of 3.
 Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.
 */


class Solution {
	func lengthOfLongestSubstring(_ s: String) -> Int {
		var dict = [Character:Int]()
		var maxSub = 0
		var left = 0
		var string = Array(s)

		for i in 0..<string.count {
			if let index = dict[string[i]], index >= left {
				left = index + 1
			}

			dict[string[i]] = i
			var currentSub = i - left + 1
			if currentSub > maxSub {
				maxSub = currentSub
			}
		}
		return maxSub
	}
}
