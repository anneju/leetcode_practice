# 125. Valid Palindrome
# https://leetcode.com/problems/valid-palindrome/

# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  s = s.gsub(/[^0-9A-Za-z]/, '')
  left = 0
  right = s.length - 1

  while left < right
    return false unless s[left].downcase == s[right].downcase
    left += 1
    right -= 1
  end
  true
end
