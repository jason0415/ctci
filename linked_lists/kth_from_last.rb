class KthFromLast

  # k = 0 return last item
  def self.kth_from_last(list, k)
    return nil if list.nil?
    return nil if list.head.nil? || k < 0
    first = list.head
    second = list.head
    k.times do
      second = second.next
      return nil if second.nil?
    end
    until second.next.nil?
      first = first.next
      second = second.next
    end
    first.key
  end

end