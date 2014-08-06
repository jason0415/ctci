# Write code to remove duplicates from an unsorted linked list.
# FOLLOW UP
# How would you solve this problem if a temporary buffer is not allowed?

class RemoveDuplicate

  # Without hash table
  def self.remove_duplicate!(list)
    return if list.nil?
    current = list.head
    until current.nil?
      runner = current
      until runner.next.nil?
        if current.key == runner.next.key
          runner.next = runner.next.next
        else
          runner = runner.next
        end
      end
      current = current.next
    end
  end

  # Without hash table
  def self.remove_duplicate2!(list)
    return if list.nil? || list.head.nil?
    c = list.head
    r = list.head.next
    p = list.head
    until c.next.nil?
      until r.nil?
        if c.key == r.key
          p.next = r.next
        else
          p = r
        end
        r = r.next
      end
      c = c.next
      p = c
      r = c.next
    end
  end

  # With hash table
  def self.remove_duplicate3!(list)
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