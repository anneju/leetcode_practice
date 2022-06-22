# 20. Valid Parentheses
# https://leetcode.com/problems/valid-parentheses/

# @param {String} s
# @return {Boolean}
def is_valid(s)
  return false if s.length.odd?

  parentheses_sets = []
  s.each_char do |c|
    case c
    when '(', '[', '{'
      parentheses_sets.push(c)
    when ')'
      return false if parentheses_sets.pop != '('
    when ']'
      return false if parentheses_sets.pop != '['
    when '}'
      return false if parentheses_sets.pop != '{'
    end
  end

  parentheses_sets.empty?
end

is_valid("()")
