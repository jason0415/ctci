require '../empty_string_search'

a = ['at', '', '', '', 'ball', '', '', 'car', '', '', 'dad', '', '', 'hello']
puts "Location of 'at' is: #{EmptyStringSearch.find(a, 'at')}"
puts "Location of 'ball' is: #{EmptyStringSearch.find(a, 'ball')}"
puts "Location of 'car' is: #{EmptyStringSearch.find(a, 'car')}"
puts "Location of 'dad' is: #{EmptyStringSearch.find(a, 'dad')}"
puts "Location of 'hello' is: #{EmptyStringSearch.find(a, 'hello')}"