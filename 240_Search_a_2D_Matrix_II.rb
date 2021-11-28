# 240. Search a 2D Matrix II
# https://leetcode.com/problems/search-a-2d-matrix-ii/

# @param {Integer[][]} matrix
# @param {Integer} target
# @return {Boolean}
def search_matrix(matrix, target)
  horizontal_size = matrix[0].size
  vertical_size = matrix.size

  # start from bottom left
  horizontal_idex = 0
  vertical_idex = vertical_size - 1

  while vertical_idex >= 0 && horizontal_idex < horizontal_size
    if matrix[vertical_idex][horizontal_idex] == target
      return true
    elsif matrix[vertical_idex][horizontal_idex] > target
      vertical_idex -= 1
    elsif matrix[vertical_idex][horizontal_idex] < target
      horizontal_idex += 1
    end
  end

  false
end
