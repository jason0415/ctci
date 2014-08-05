require '../longest_word_made_of_others'

array = ['cat', 'banana', 'dog', 'nana', 'walk', 'walker', 'dogwalker', 'nanadogwalk', 'asdfasdfasdfasdf']
puts LongestWordMadeOfOthers.find(array)

array = %w(a b c d ac bcd)
puts LongestWordMadeOfOthers.find(array)