# Given a circular linked list, implement an algorithm which returns the node at
# the beginning of the loop.
# DEFINITION
# CircularAt linked list: A (corrupt) linked list in which a node's next pointer points
# to an earlier node, so as to make a loop in the linked list.
# EXAMPLE
# Input: A - > B - > C - > D - > E - > C [the same C as earlier]
# Output: C

require 'circular_at'

class PositionCircular

  def self.position_circular(list)
    return nil if list.nil?
    raise 'NOt a circular linked list!' unless CircularAt.circular?(list)
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