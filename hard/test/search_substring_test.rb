require '../search_substring'

search_substring = SearchSubstring.new('mississippi')

%w(is sip hi sis mississippa).each do |word|
  puts "Contains?('#{word}') - #{search_substring.contains?(word)}"
end