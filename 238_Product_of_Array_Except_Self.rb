# 238. Product of Array Except Self
# https://leetcode.com/problems/product-of-array-except-self/

# @param {Integer[]} nums
# @return {Integer[]}
def product_except_self(nums)
  result = 1
  one_zero = false
  nums.each_with_object({}) do |num, hash|
    if num == 0 && hash[0]
      return Array.new(nums.length, 0)
    elsif num == 0
      hash[0] = true && one_zero = true
    else
      result = result * num
    end
  end

  answer = []
  nums.each do |num|
    if one_zero && num == 0
      answer << result
    elsif one_zero
      answer << 0
    else
      answer << (result / num)
    end
  end

  answer
end
