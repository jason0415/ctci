# You have two numbers represented by a linked list, where each node contains a
# single digit. The digits are stored in reverse order, such that the Ts digit is at the
# head of the list. Write a function that adds the two numbers and returns the sum
# as a linked list.

# EXAMPLE
#   - Input: (7-> 1 -> 6) + (5 -> 9 -> 2).That is, 617 + 295.
#   - Output: 2 -> 1 -> 9.That is, 912.

# FOLLOW UP
# Suppose the digits are stored in forward order. Repeat the above problem.
# EXAMPLE
#   - Input: (6 -> 1 -> 7) + (2 -> 9 -> 5).That is, 617 + 295.
#   - Output: 9 -> 1 -> 2.That is, 912.

require_relative 'linked_list'

class SumTwoLists

  def self.sum(list1, list2)
    return nil if list1.nil? || list2.nil?
    current1 = list1.head
    current2 = list2.head
    result = LinkedList.new
    c = 0
    until current1.nil? || current2.nil?
      sum = current1.key + current2.key + c
      d = sum % 10
      c = sum / 10
      result.append(d)
      current1 = current1.next
      current2 = current2.next
    end
    until current1.nil?
      sum = c + current1.key
      d = sum % 10
      c = sum / 10
      result.append(d)
      current1 = current1.next
    end
    until current2.nil?
      sum = c + current2.key
      d = sum % 10
      c = sum / 10
      result.append(d)
      current2 = current2.next
    end
    result.append(c) unless c == 0
    result.keys
  end

end