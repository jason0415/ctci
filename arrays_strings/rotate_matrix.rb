# Given an image represented by an NxN matrix, where each pixel in the image is
# 4 bytes, write a method to rotate the image by 90 degrees. Can you do this in
# place?

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