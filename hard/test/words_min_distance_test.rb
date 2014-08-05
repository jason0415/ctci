require '../words_min_distance'

string = %w(What is your name My name is Hawstein)

puts "One time query:"
puts "Min distance between 'is' and 'name' is: #{WordsMinDistance.find2(string, 'is', 'name')}"
puts "Min distance between 'hello' and 'name' is: #{WordsMinDistance.find2(string, 'hello', 'name')}"
puts ''

puts "Repeated queries:"
words_min_distance = WordsMinDistance.new(string)
puts "Min distance between 'is' and 'name' is: #{words_min_distance.find('is', 'name')}"
puts "Min distance between 'hello' and 'name' is: #{words_min_distance.find('hello', 'name')}"
