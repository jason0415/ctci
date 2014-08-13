require '../hash_table'

hash_table = HashTable.new(10)
hash_table.put(:hello, 'world')
hash_table.put(:jason, 'liu')
hash_table.put(:ct, 'ci')
hash_table.put(:inter, 'view')

puts hash_table.get(:hello)
puts hash_table.get(:jason)
puts hash_table.get(:ct)
puts hash_table.get(:inter)
puts hash_table.get(:abc)