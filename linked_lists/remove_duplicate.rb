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