require '../transform_word'

dict = %w(hello world daxp damx lamx limx hi likx)

puts TransformWord.list(dict, 'damp', 'like').inspect