# 121. Best Time to Buy and Sell Stock
# https://leetcode.com/problems/best-time-to-buy-and-sell-stock/

# @param {Integer[]} prices
# @return {Integer}

def max_profit(prices)
  profit = 0
  min = prices[0]

  prices.each do |price|
    min = [min, price].min
    profit = [profit, price - min].max
  end

  profit
end

max_profit([7,1,5,3,6,4])
