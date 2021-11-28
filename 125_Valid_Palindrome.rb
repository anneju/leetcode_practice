# 125. Valid Palindrome
# https://leetcode.com/problems/valid-palindrome/

# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  s = s.gsub(/[^0-9A-Za-z]/, '')
  left = 0
  right = (s.length) - 1

  return true if s.length < 2

  result = false
  while left <= right
    if s[left].downcase == s[right].downcase
      result = true
      left +=1
      right -= 1
    else
      return false
    end
  end
  result
end
