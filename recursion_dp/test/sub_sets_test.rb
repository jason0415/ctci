require '../sub_sets'

puts SubSets.find('').inspect
puts SubSets.find('1').inspect
puts SubSets.find('12').inspect
puts SubSets.find('123').inspect
puts SubSets.find('1234').inspect

puts SubSets.find2([]).inspect
puts SubSets.find2([1]).inspect
puts SubSets.find2([1,2]).inspect
puts SubSets.find2([1,2,3]).inspect
puts SubSets.find2([1,2,3,4]).inspect