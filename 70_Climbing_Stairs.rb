# 70. Climbing Stairs
# https://leetcode.com/problems/climbing-stairs/

# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
  # 1, 2, 3, 4, 5, ...
  # 1, 2, 3, 5, 8, ...
  return 1 if n == 1
  return 2 if n == 2

  a, b = 1, 2
  index = 3
  while index <= n
    a, b = b, a + b
    index += 1
  end
  b
end

# YT solution: https://www.youtube.com/watch?v=Y0lT9Fck7qI

climb_stairs(4)
