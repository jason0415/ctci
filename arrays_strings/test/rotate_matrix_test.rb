require '../rotate_matrix'

puts "RotateMatrix the matrix by 90 degree:
    #{RotateMatrix.rotate!(
        [
            [0,1,2,3],
            [4,5,6,7],
            [8,9,10,11],
            [12,13,14,15]
        ])}"
puts "RotateMatrix the matrix by 90 degree:
    #{RotateMatrix.rotate2!(
    [
        [0,1,2,3],
        [4,5,6,7],
        [8,9,10,11],
        [12,13,14,15]
    ])}"

puts '###################'

puts "RotateMatrix the matrix by 90 degree:
    #{RotateMatrix.rotate!(
    [
        [0,1,2],
        [3,4,5],
        [6,7,8]
    ])}"
puts "RotateMatrix the matrix by 90 degree:
    #{RotateMatrix.rotate2!(
    [
        [0,1,2],
        [3,4,5],
        [6,7,8]
    ])}"