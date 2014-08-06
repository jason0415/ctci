# Write code to partition a linked list around a value x, such that all nodes less than
# x come before all nodes greater than or equal to x.

require_relative 'linked_list'

class Partition

  def self.partition(list, x)
    return nil if list.nil?
    return nil unless x.is_a? Integer
    new_list = LinkedList.new
    current = list.head
    until current.nil?
      if current.key < x
        new_list.insert(current.key)
      else
        new_list.append(current.key)
      end
      current = current.next
    end
    new_list
  end

end