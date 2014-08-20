# Consider a simple node-like data structure called BiNode, which has pointers to
# two other nodes.
# public class BiNode {
#   public BiNode node1, node2;
#   public int data;
# }
# The data structure BiNode could be used to represent both a binary tree (where
# node1 is the left node and node2 is the right node) or a doubly linked list (where
# node2 is the previous node and node2 is the next node). Implement a method
# to convert a binary search tree (implemented with BiNode) into a doubly linked
# list. The values should be kept in order and the operation should be performed
# in place (that is, on the original data structure).

class BSTtoDLinkedList

  # O(n)
  # Return the head
  def self.convert(current)
    return nil if current.nil?
    left = convert(current.left)
    right = convert(current.right)
    concat(tail(left), current) unless left.nil?
    concat(current, right) unless right.nil?
    left.nil? ? current : left
  end

  private
  # Find largest element
  def self.tail(current)
    return nil if current.nil?
    until current.right.nil?
      current = current.right
    end
    current
  end

  def self.concat(node1, node2)
    node1.right = node2
    node2.left = node1
  end

end