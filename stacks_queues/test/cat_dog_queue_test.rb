require '../cat'
require '../dog'
require '../cat_dog_queue'

c1 = Cat.new('c1')
c2 = Cat.new('c2')
c3 = Cat.new('c3')
c4 = Cat.new('c4')
c5 = Cat.new('c5')

d1 = Dog.new('d1')
d2 = Dog.new('d2')
d3 = Dog.new('d3')
d4 = Dog.new('d4')
d5 = Dog.new('d5')

cat_dog_queue = CatDogQueue.new
cat_dog_queue.enqueue(d1)
cat_dog_queue.enqueue(d2)
cat_dog_queue.enqueue(c1)
cat_dog_queue.enqueue(c2)
cat_dog_queue.enqueue(d3)
cat_dog_queue.enqueue(d4)
cat_dog_queue.enqueue(c3)
cat_dog_queue.enqueue(d5)
cat_dog_queue.enqueue(c4)
cat_dog_queue.enqueue(c5)

puts cat_dog_queue.dequeue_any
puts cat_dog_queue.dequeue_cat
puts cat_dog_queue.dequeue_cat
puts cat_dog_queue.dequeue_cat
puts cat_dog_queue.dequeue_any
puts cat_dog_queue.dequeue_any
puts cat_dog_queue.dequeue_dog
puts cat_dog_queue.dequeue_cat
puts cat_dog_queue.dequeue_dog
puts cat_dog_queue.dequeue_any

puts cat_dog_queue.dequeue_any
puts cat_dog_queue.dequeue_cat
puts cat_dog_queue.dequeue_dog
