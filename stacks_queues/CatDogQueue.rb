require_relative 'cat'
require_relative 'dog'

class CatDogQueue

  def initialize
    @cat_queue = []
    @dog_queue = []
    @timestamp = 0
  end

  def enqueue(animal)
    raise 'You can only put either a cat or a dog!' unless animal.is_a?(Cat) || animal.is_a?(Dog)
    animal.timestamp = @timestamp
    if animal.is_a?(Cat)
      @cat_queue << animal
    else
      @dog_queue << animal
    end
    @timestamp += 1
  end

  def dequeue_dog
    @dog_queue.shift
  end

  def dequeue_cat
    @cat_queue.shift
  end

  def dequeue_any
    dog = @dog_queue.first
    cat = @cat_queue.first
    if dog.nil?
      return @cat_queue.shift
    elsif cat.nil?
      return @dog_queue.shift
    end
    if dog.timestamp < cat.timestamp
      @dog_queue.shift
    else
      @cat_queue.shift
    end
  end
end