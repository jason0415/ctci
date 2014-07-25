require '../queue_two_stacks'

queue = QueueTwoStacks.new
queue.enqueue(1)
queue.enqueue(2)
queue.enqueue(3)
queue.enqueue(4)
queue.enqueue(5)

puts queue.dequeue
puts queue.dequeue
puts queue.dequeue

queue.enqueue(6)
queue.enqueue(7)
queue.enqueue(8)

puts queue.dequeue
puts queue.dequeue
puts queue.dequeue
puts queue.dequeue
puts queue.dequeue

puts queue.dequeue