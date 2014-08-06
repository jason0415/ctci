# Implement a function to check if a linked list is a palindrome.

class Palindrome

  # With explicit stack
  def self.palindrome?(list)
    return false if list.nil? || list.head.nil?
    slow = list.head
    fast = list.head
    loop do
      break if fast.nil? || fast.next.nil?
      slow = slow.next
      fast = fast.next.next
    end
    # Now slow is in the middle
    stack = []
    current = list.head
    until current == slow
      stack << current.key
      current = current.next
    end
    slow = slow.next unless fast.nil? # If fast is nil, the length of list is odd
    until stack.empty?
      return false unless stack.pop == slow.key
      slow = slow.next
    end
    true
  end

  # In place
  def self.palindrome2?(list)
    palindrome = true
    return false if list.nil? || list.head.nil?
    slow = list.head
    fast = list.head
    loop do
      break if fast.nil? || fast.next.nil?
      slow = slow.next
      fast = fast.next.next
    end
    # Now slow is in the middle

    # Reverse the second half
    current = slow.next
    previous = slow
    until current.nil?
      next_node = current.next
      current.next = previous
      previous = current
      current = next_node
    end

    # previous is now pointing to the head of the second half list
    first = list.head
    second = previous # We will use previous to recover the second half later
    loop do
      unless first.key == second.key
        palindrome = false
        break
      end
      break if second == slow
      first = first.next
      second = second.next
    end

    # recover the second half
    # previous is pointing to the head of the second half list
    current = previous
    previous = nil
    until current == slow
      next_node = current.next
      current.next = previous
      previous = current
      current = next_node
    end
    slow.next = previous

    palindrome
  end

end