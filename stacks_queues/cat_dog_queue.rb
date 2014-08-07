# An animal shelter holds only dogs and cats, and operates on a strictly "first in,
# first out" basis. People must adopt either the "oldest" (based on arrival time) of
# all animals at the shelter, or they can select whether they would prefer a dog or
# a cat (and will receive the oldest animal of that type). They cannot select which
# specificanimal they would like. Create the data structures to maintain this system
# and implement operations such as enqueue, dequeueAny, dequeueDog and
# dequeueCat.You may use the built-in LinkedList data structure.

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