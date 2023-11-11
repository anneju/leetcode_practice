# 704. Binary Search
# https://leetcode.com/problems/binary-search/

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
  return -1 if nums.empty? || nums.nil?

  low = 0
  high = nums.length - 1

  while low + 1 < high # at least three elements in nums
    mid = low + (high - low) / 2

    if nums[mid] == target
      return mid
    elsif nums[mid] < target
      low = mid
    else
      high = mid
    end
  end


  return low if nums[low] == target
  return high if nums[high] == target
  return -1
end

def search(nums, target)
  index = nums.find_index(target)
  index ? index : -1
end
