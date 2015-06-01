# Write code to partition a linked list around a value x, such that all nodes less than
# x come before all nodes greater than or equal to x.

class Partition

  def self.partition(list, x)
    return if list.nil?
    return unless x.is_a? Integer
    less_x_start, greater_x_start,
        less_x_end, greater_x_end = nil, nil, nil, nil
    current = list.head
    until current.nil?
      next_node = current.next
      current.next = nil
      if current.key < x
        if less_x_start.nil?
          less_x_start = current
          less_x_end = less_x_start
        else
          less_x_end.next = current
          less_x_end = current
        end
      else
        if greater_x_start.nil?
          greater_x_start = current
          greater_x_end = greater_x_start
        else
          greater_x_end.next = current
          greater_x_end = current
        end
      end
      current = next_node
    end
    return greater_x_start if less_x_start.nil?
    less_x_end.next = greater_x_start
    less_x_start
  end

end