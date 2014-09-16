# Implement an algorithm to find the kth to last element of a singly linked list.

class KthFromLast

  # k = 0 return last item
  def self.kth_from_last(list, k)
    return if list.nil?
    return if list.head.nil? || k < 0
    first = list.head
    second = list.head
    k.times do
      second = second.next
      return if second.nil?
    end
    until second.next.nil?
      first = first.next
      second = second.next
    end
    first.key
  end

end