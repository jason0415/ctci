class LinkedList

  class Node
    attr_accessor :key, :next
    def initialize(key)
      @key = key
    end
  end

  attr_reader :head

  def insert(key)
    new_node = Node.new(key)
    new_node.next = @head
    @head = new_node
  end

  def append(key)
    new_node = Node.new(key)
    if @head.nil?
      @head = new_node
      return
    end
    current = @head
    until current.next.nil?
      current = current.next
    end
    current.next = new_node
  end

  def keys
    keys = []
    current = @head
    until current.nil?
      keys << current.key
      current = current.next
    end
    keys
  end

end