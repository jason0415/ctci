# Write code to remove duplicates from an unsorted linked list.
# FOLLOW UP
# How would you solve this problem if a temporary buffer is not allowed?

class RemoveDuplicate

  # Without hash table
  def self.remove_duplicate!(list)
    return if list.nil?
    first, second = list.head, list.head
    until first.next.nil?
      until second.next.nil?
        if first.key == second.next.key
          second.next = second.next.next
        else
          second = second.next
        end
      end
      first = first.next
      second = first
    end
    list
  end

  # With hash table
  def self.remove_duplicate2!(list)
    return if list.nil?
    hash = {}
    current = list.head
    previous = nil
    until current.nil?
      if hash[current.key].nil?
        hash[current.key] = true
        previous = current
      else
        previous.next = current.next
      end
      current = current.next
    end
  end

end