/*
 121. Best Time to Buy and Sell Stock

 You are given an array prices where prices[i] is the price of a given stock on the ith day.

 You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.

 Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.
 
 Example 1:
 Input: prices = [7,1,5,3,6,4]
 Output: 5
 Explanation: Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit = 6-1 = 5.
 Note that buying on day 2 and selling on day 1 is not allowed because you must buy before you sell.
 
 Example 2:
 Input: prices = [7,6,4,3,1]
 Output: 0
 Explanation: In this case, no transactions are done and the max profit = 0.
 */


// This approach relies and finding both the minBuy and the maxProfit
// and update it when there is smaller minBuy and largerMaxProfit
class Solution {
	func maxProfit(_ prices: [Int]) -> Int {
		
		var minBuy = prices[0]
		var currProfit = 0
		var maxProfit = 0
		
		for i in 1..<prices.count {
			if prices[i] < minBuy {
				minBuy = prices[i]
			} else {
				currProfit =  prices[i] - minBuy
				if currProfit > maxProfit {
					maxProfit = currProfit
				}
			}
		}
		return maxProfit
	}
}


//Second approach using min and max, same logic as before but simplified
class Solution {
	func maxProfit(_ prices: [Int]) -> Int {

		var minBuy = prices[0]
		var maxProfit = 0

		for i in 1..<prices.count {
			minBuy = min(prices[i], minBuy)
			maxProfit = max(prices[i] - minBuy, maxProfit)
		}
		return maxProfit
	}
}
