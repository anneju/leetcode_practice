# 121. Best Time to Buy and Sell Stock
# https://leetcode.com/problems/best-time-to-buy-and-sell-stock/

# @param {Integer[]} prices
# @return {Integer}

def max_profit(prices)
  last_index = prices.length - 1
  return 0 if last_index == 0
  max_profit = 0

  prices.each_with_index do |price, index|
    right = index + 1
    while right <= last_index
      max_profit = [max_profit, prices[right] - price].max if prices[right] > price
      right += 1
    end
  end

  max_profit
end

max_profit([7,1,5,3,6,4])
