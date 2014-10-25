# Given an image represented by an NxN matrix, where each pixel in the image is
# 4 bytes, write a method to rotate the image by 90 degrees. Can you do this in
# place?

class RotateMatrix

  # with extra space
  def self.rotate!(matrix=[])
    d = matrix.size
    rotated_matrix = Array.new(d) { Array.new(d) }
    (0..d-1).each do |i|
      (0..d-1).each do |j|
        rotated_matrix[j][d-1-i] = matrix[i][j]
      end
    end
    matrix = rotated_matrix
    matrix
  end

  # without extra space
  def self.rotate2!(matrix=[])
    d = matrix.size # n x n
    # Step1. swap by diagonal (left-down to right-up)
    (0..d-2).each do |i|
      (0..d-2).each do |j|
        matrix[i][j], matrix[d-1-j][d-1-i] = matrix[d-1-j][d-1-i], matrix[i][j]
      end
    end

    # Step2. swap by x axis
    (0..(d-1)/2).each do |i|
      (0..d-1).each do |j|
        matrix[i][j], matrix[d-1-i][j] = matrix[d-1-i][j], matrix[i][j]
      end
    end
    matrix
  end

end