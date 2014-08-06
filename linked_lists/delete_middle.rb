# Implement an algorithm to delete a node in the middle of a singly linked list,
# given only access to that node.                                                                                             EXAMPLE
# Input: the node c from the linked list a->b->c->d->e
# Result: nothing is returned, but the new linked list looks like a- >b- >d->e

class DeleteMiddle

  def self.delete_middle!(list)
    return false if list.nil?
    return false if list.head.nil?
    current = list.head
    runner = list.head
    until runner.next.nil?
      runner = runner.next.next
      current = current.next
      break if runner.nil?
    end
    return false if current.next.nil? # can not delete last item
    current.key = current.next.key
    current.next = current.next.next
    true
  end

end