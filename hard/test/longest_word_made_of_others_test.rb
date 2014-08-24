require '../longest_word_made_of_others'

a = ['cat', 'banana', 'dog', 'nana', 'walk', 'walker', 'dogwalker', 'nanadogwalk', 'asdfasdfasdfasdf']
puts LongestWordMadeOfOthers.find(a)

a = %w(a b c d ac bcd aef)
puts LongestWordMadeOfOthers.find(a)