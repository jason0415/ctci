require 'circular'

class PositionCircular

  def self.position_circular(list)
    return nil if list.nil?
    raise 'NOt a circular linked list!' unless Circular.circular?(list)
    slow = list.head
    fast = list.head
    loop do
      slow = slow.next
      fast = fast.next.next
      break if slow == fast
    end
    slow = list.head
    until slow == fast
      slow = slow.next
      fast = fast.next
    end
    slow
  end

end