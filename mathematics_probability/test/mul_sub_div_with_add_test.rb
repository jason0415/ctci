require '../mul_sub_div_with_add'

puts "5 * 3 = #{MulSubDivWithAdd.multiply(5, 3)}"
puts "5 * 3 = #{MulSubDivWithAdd.multiply(5, -3)}"
puts "5 * 3 = #{MulSubDivWithAdd.multiply(-5, -3)}"

puts "5 - 3 = #{MulSubDivWithAdd.subtract(5, 3)}"
puts "5 - (-3) = #{MulSubDivWithAdd.subtract(5, -3)}"
puts "3 - 5 = #{MulSubDivWithAdd.subtract(3, 5)}"
puts "-5 - 3 = #{MulSubDivWithAdd.subtract(-5, 3)}"

puts "6 / 3 = #{MulSubDivWithAdd.divide(6, 3)}"
puts "8 / 3 = #{MulSubDivWithAdd.divide(5, -3)}"
puts "-6 / 3 = #{MulSubDivWithAdd.divide(-6, 3)}"
puts "-6 / -3 = #{MulSubDivWithAdd.divide(-6, -3)}"