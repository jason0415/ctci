# Check whether a linked list is circular

class CircularAt

  def self.position(list)
    return if list.nil?
    slow, fast = list.head, list.head
    until slow == fast
      return if fast.nil? || fast.next.nil?
      slow = slow.next
      fast = fast.next.next
    end
    slow = list.head
    until slow == fast
      slow = slow.next
      fast = fast.next
    end
    slow
  end

end