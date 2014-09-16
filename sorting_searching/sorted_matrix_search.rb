# Given an M x N matrix in which each row and each column is sorted in ascending
# order, write a method to find an element.

class SortedMatrixSearch

  def self.find(matrix, key)
    return [] if matrix.nil?
    find_helper(matrix, key, 0, matrix[0].size-1)
  end

  def self.find2(matrix, key)
    row = 0
    col = matrix[0].size-1
    until row > matrix.size || col < 0
      if key < matrix[row][col]
        col -= 1
      elsif key > matrix[row][col]
        row += 1
      else
        return [row, col]
      end
    end
  end

  private
  def self.find_helper(matrix, key, i, j)
    return [] if i < 0 || j < 0 || i > matrix.size-1 || j > matrix[0].size-1
    if key < matrix[i][j]
      find_helper(matrix, key, i, j-1)
    elsif key > matrix[i][j]
      find_helper(matrix, key, i+1, j)
    else
      [i, j]
    end
  end

end