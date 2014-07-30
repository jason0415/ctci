# Given an M x N matrix in which each row and each column is sorted in ascending
# order, write a method to find an element.

class SortedMatrixSearch

  def self.find(matrix, key)
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

end