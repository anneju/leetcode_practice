# 278. First Bad Version
# https://leetcode.com/problems/first-bad-version
# The is_bad_version API is already defined for you.
# @param {Integer} version
# @return {boolean} whether the version is bad
# def is_bad_version(version):

# @param {Integer} n
# @return {Integer}
def first_bad_version(n)
  return n if n == 1

  b_search(1, n)
end

def b_search(left, right)
  while left < right
    mid = (left + right) / 2
    mid = mid.floor # 確保是整數
    if is_bad_version(mid)
      right = mid
    else
      left = mid + 1
    end
  end

  return left if is_bad_version(left)
  return right if is_bad_version(right)
end
