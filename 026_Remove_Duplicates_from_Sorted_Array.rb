# 26. Remove Duplicates from Sorted Array
# https://leetcode.com/problems/remove-duplicates-from-sorted-array/

# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  return 1 if nums.length == 1

  last_index = nums.length - 1
  left = 0
  right = 0

  while right <= last_index
    if nums[left] != nums[right]
      left += 1
      nums[left] = nums[right]
    end

    right += 1
  end

  left + 1
end
