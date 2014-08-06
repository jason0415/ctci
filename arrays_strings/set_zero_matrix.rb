# Write an algorithm such that if an element in an MxN matrix is 0, its entire row
# and column are set to 0.

class SetZeroMatrix

  def self.set_zero!(matrix=[])
    rows = Array.new(matrix.size, false)
    cols = Array.new(matrix[0].size, false)

    (0..matrix.size-1).each do |i|
      (0..matrix[0].size-1).each do |j|
        if matrix[i][j] == 0
          rows[i] = true
          cols[j] = true
        end
      end
    end

    (0..matrix.size-1).each do |i|
      (0..matrix[0].size-1).each do |j|
        matrix[i][j] = 0 if rows[i] || cols[j]
      end
    end
    matrix
  end

end