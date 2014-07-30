require '../empty_string_search'

array = ['at', '', '', '', 'ball', '', '', 'car', '', '', 'dad', '', '', 'hello']
puts "Location of 'at' is: #{EmptyStringSearch.find(array, 'at')}"
puts "Location of 'ball' is: #{EmptyStringSearch.find(array, 'ball')}"
puts "Location of 'car' is: #{EmptyStringSearch.find(array, 'car')}"
puts "Location of 'dad' is: #{EmptyStringSearch.find(array, 'dad')}"
puts "Location of 'hello' is: #{EmptyStringSearch.find(array, 'hello')}"