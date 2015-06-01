require '../linked_list'
require '../remove_duplicate'
require '../kth_from_last'
require '../delete_middle'
require '../partition'
require '../sum_two_lists'
require '../palindrome'

list = LinkedList.new
list.insert(0)
list.insert(1)
list.insert(1)
list.insert(2)
list.insert(7)
list.insert(3)
list.insert(4)
list.insert(5)
list.insert(6)
list.insert(9)
list.insert(7)
list.insert(8)
list.insert(9)
puts list.keys.inspect

puts "After removing all duplicates from the list: #{RemoveDuplicate.remove_duplicate!(list)}"
puts list.keys.inspect

k = rand(-5..12)
puts "#{k}th from last: #{KthFromLast.kth_from_last(list, k)}"

rand = rand(0..9)
puts "Partition by #{rand}: #{Partition.partition(list, rand).inspect}"

list3 = LinkedList.new
list4 = LinkedList.new
list3.append(9)
list3.append(9)
list3.append(9)
list3.append(9)
list4.append(9)
list4.append(9)
# list4.append(9)
puts "Sum of #{list3.keys} and #{list4.keys} is #{SumTwoLists.sum(list3, list4)}"

list5 = LinkedList.new
list5.append(0)
puts "Is #{list5.keys} palindrome? - #{Palindrome.palindrome?(list5)}, #{Palindrome.palindrome2?(list5)}"
list5.append(1)
puts "Is #{list5.keys} palindrome? - #{Palindrome.palindrome?(list5)}, #{Palindrome.palindrome2?(list5)}"
list5.append(2)
puts "Is #{list5.keys} palindrome? - #{Palindrome.palindrome?(list5)}, #{Palindrome.palindrome2?(list5)}"
list5.append(1)
puts "Is #{list5.keys} palindrome? - #{Palindrome.palindrome?(list5)}, #{Palindrome.palindrome2?(list5)}"
list5.append(0)
puts "Is #{list5.keys} palindrome? - #{Palindrome.palindrome?(list5)}, #{Palindrome.palindrome2?(list5)}"
puts "list5: #{list5.keys}"

list6 = LinkedList.new
list6.append(0)
list6.append(1)
list6.append(1)
list6.append(0)
puts "Is #{list6.keys} palindrome? - #{Palindrome.palindrome?(list6)}, #{Palindrome.palindrome2?(list6)}"
puts "list6: #{list6.keys}"
