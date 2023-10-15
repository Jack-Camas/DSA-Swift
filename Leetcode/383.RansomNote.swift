/*
 383. Ransom Note

 Given two strings ransomNote and magazine, return true if ransomNote 
 can be constructed by using the letters from magazine and false otherwise.

 Each letter in magazine can only be used once in ransomNote.

 Example 1:
 Input: ransomNote = "a", magazine = "b"
 Output: false
 
 Example 2:
 Input: ransomNote = "aa", magazine = "ab"
 Output: false
 
 Example 3:
 Input: ransomNote = "aa", magazine = "aab"
 Output: true
 */

class Solution {
	func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
		var ransomDict = countChars(string: ransomNote)
		var magDict = countChars(string: magazine)

		func countChars(string: String) -> [Character:Int] {
			var dict = [Character:Int]()
			for c in string {
				if let value = dict[c] {
					dict[c] = value + 1
				} else {
					dict[c] = 1
				}
			}
			return dict
		}

		for (char,count) in ransomDict {
			if let value = magDict[char], count <= value {
				continue
			} else {
				return false
			}
		}
		return true
	}
}


//Different approach
// We just need to one dictionary for magazine
// and decrease the count for the chars the appear in ransom
class Solution {
	func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
		var dict = [Character:Int]()
		
		for c in magazine {
			if let value = dict[c] {
				dict[c] = value + 1
			} else {
				dict[c] = 1
			}
		}
		
		for char in ransomNote {
			if let value = dict[char], value > 0 {
				dict[char] = value - 1
			} else {
				return false
			}
		}
		return true
	}
}
