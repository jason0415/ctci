require '../rotate_string'

puts "Check 'waterbottle' and 'erbottlewat': #{RotateString.rotation?('waterbottle','erbottlewat')}"
puts "Check 'abcd' and 'cdba': #{RotateString.rotation?('abcd','cdba')}"
puts "Check 'abcd' and 'cda': #{RotateString.rotation?('abcd','cda')}"