# 658. Find K Closest Elements
# https://leetcode.com/problems/find-k-closest-elements/

# @param {Integer[]} arr
# @param {Integer} k
# @param {Integer} x
# @return {Integer[]}
def find_closest_elements(arr, k, x)
  if x <= arr.first
    return arr.first(k)
  elsif x >= arr.last
    return arr.last(k)
  end

  closeset_index = find_closeset_index(arr, x)
  left = closeset_index - 1
  right = closeset_index + 1

  result = [].push(arr[closeset_index])
  while result.length < k
    selected_integer = select_integer(arr[left], arr[right], x)
    selected_integer_index = arr.find_index(selected_integer)
    if selected_integer_index > closeset_index
      result.push(selected_integer)
      right += 1
    else
      result.unshift(selected_integer)
      left -= 1
    end
  end
  result
end

def find_closeset_index(arr, target)
  left = 0
  right = arr.length - 1

  while left + 1 < right
    mid = left + (right - left) / 2

    if arr[mid] == target
      return mid
    elsif arr[mid] < target
      left = mid
    elsif arr[mid] > target
      right = mid
    end
  end

  arr.find_index(select_integer(arr[left], arr[right], target))
end

def select_integer(a, b, target)
  return a if (a - target).abs < (b - target).abs
  return a if (a - target).abs == (b - target).abs && a < b
  b
end

