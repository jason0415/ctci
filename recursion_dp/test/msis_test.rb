require '../msis'

puts MSIS.find([1, 101, 2, 3, 100, 4, 5]).inspect
puts MSIS.find([3, 4, 5, 10]).inspect
puts MSIS.find([10, 5, 4, 3]).inspect

puts MSIS.find([7,2,8,1,3,4,10,6,9,5]).inspect
puts MSIS.find([0,8,4,12,2,10,6,14,1,9,5,13,3,11,7,15]).inspect