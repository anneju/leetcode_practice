# 27. Remove Element
# https://leetcode.com/problems/remove-element/

# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
  return 0  if nums.empty?

  nums.each_with_index do |n, i|
    nums[i] = nil if n == val
  end
  nums.delete(nil)
  nums.length
end


# two pointers
def remove_element(nums, val)
  return 0  if nums.empty?

  slow_index = 0
  nums.each_with_index do |n, fast_index|
    if n != val
      nums[slow_index] = n
      slow_index += 1
    end
  end
  slow_index
end
