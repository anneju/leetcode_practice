require 'pry'
# 15. 3Sum
# https://leetcode.com/problems/3sum/

# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
  return [] if nums.size < 3
  nums.sort!

  results = []
  nums.each_with_index do |num_out, index_out|
    target = 0 - num_out # find two elements sums up to this value

    nums.drop(index_out + 1).each_with_object({}).with_index do |(num_in, hash), index_in|

      if hash[num_in]
        results << [num_out, hash[num_in], num_in]
      else
        hash[target - num_in] = num_in
      end
    end
  end

  results.uniq
end

# use left & right pointers
def three_sum2(nums)
  nums.sort!
  results = []

  nums[0..(nums.length - 3)].each_with_index do |num, index|
    target = -num
    l = index + 1
    r = nums.length - 1

    while l < r do
      if (nums[l] + nums[r]) > target
        r -= 1
      elsif (nums[l] + nums[r]) < target
        l += 1
      else
        results.push([nums[index], nums[l], nums[r]])
        l += 1
      end
    end
  end

  results.uniq
end

three_sum([-1,0,1,2,-1,-4])
