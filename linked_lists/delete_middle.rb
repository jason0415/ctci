class DeleteMiddle

  def self.delete_middle(list)
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