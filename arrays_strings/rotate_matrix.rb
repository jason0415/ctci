# RotateMatrix a N * N matrix by 90 degree

class RotateMatrix

  # with extra space
  def self.rotate(matrix)
    d = matrix.size
    rotated_matrix = Array.new(d) { Array.new(d) }
    (0..d-1).each do |i|
      (0..d-1).each do |j|
        rotated_matrix[j][d-1-i] = matrix[i][j]
      end
    end
    rotated_matrix
  end

  # without extra space
  def self.rotate2(matrix)
    # TODO
  end

end