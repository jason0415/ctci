class Circular

  def self.circular?(list)
    return false if list.nil?
    slow = list.head
    fast = list.head
    loop do
      break if fast.nil? || fast.next.nil?
      slow = slow.next
      fast = fast.next.next
      return true if slow == fast
    end
    false
  end

end