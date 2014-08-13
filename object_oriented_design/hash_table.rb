# Design and implement a hash table which uses chaining (linked lists) to handle collisions.

class HashTable

  class Pair
    attr_reader :key, :value
    def initialize(key, value)
      @key, @value = key, value
    end
    def to_s
      "key: #{key}, value: #{value}"
    end
  end

  def initialize(size)
    @hash = Array.new(size) { Array.new }
    @size = size
  end

  def put(key, value)
    pair = Pair.new(key, value)
    index = hash_function(key)

    # Looking for the item with the same key and remove it
    @hash[index].each do |item|
      @hash[index].delete(item) if item.key == key
    end
    @hash[index] << pair
  end

  def get(key)
    index = hash_function(key)
    @hash[index].each do |item|
      return item.value if item.key == key
    end
    nil
  end

  private
  def hash_function(key)
    key.object_id % @size
  end

end