require '../set_zero_matrix'

puts "Set all rows and cols to 0:
        #{SetZeroMatrix.set_zero!(
          [
            [1,2,3,4],
            [5,0,7,8],
            [9,10,11,12],
            [13,14,0,16]
          ])}"