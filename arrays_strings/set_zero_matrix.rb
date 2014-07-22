class SetZeroMatrix

  def self.set_zero(matrix=[])
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