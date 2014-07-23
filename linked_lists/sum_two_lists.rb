require_relative 'linked_list'

class SumTwoLists

  def self.sum(list1, list2)
    return nil if list1.nil? || list2.nil?
    current1 = list1.head
    current2 = list2.head
    result = LinkedList.new
    carry = 0
    until current1.nil? || current2.nil?
      sum = current1.key + current2.key + carry
      d = sum % 10
      carry = sum / 10
      result.append(d)
      current1 = current1.next
      current2 = current2.next
    end
    unless current1.nil?
      result.append(carry+current1.key)
    end
    unless current2.nil?
      result.append(carry+current2.key)
    end
    if carry != 0 && current1.nil? && current2.nil?
      result.append(carry)
    end
    result.keys
  end

end