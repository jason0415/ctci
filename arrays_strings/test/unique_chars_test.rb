require '../unique_chars'

puts "Does 'abcdefg' have unique chars?: #{UniqueChars.unique?('abcdefg')} "
puts "Does 'abcdefg' have unique chars?: #{UniqueChars.unique2?('abcdefg')} "

puts "Does 'abcdedg' have unique chars?: #{UniqueChars.unique?('abcdedg')} "
puts "Does 'abcdedg' have unique chars?: #{UniqueChars.unique2?('abcdedg')} "