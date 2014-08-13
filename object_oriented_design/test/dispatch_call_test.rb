require '../dispatch_call'

call_center = CallCenter.instance

c0 = Caller.new('c0')
c1 = Caller.new('c1')
c2 = Caller.new('c2')
c3 = Caller.new('c3')
c4 = Caller.new('c4')
c5 = Caller.new('c5')
c6 = Caller.new('c6')
c7 = Caller.new('c7')
c8 = Caller.new('c8')
c9 = Caller.new('c9')
c10 = Caller.new('c10')
c11 = Caller.new('c11')
c12 = Caller.new('c12')
c13 = Caller.new('c13')
c14 = Caller.new('c14')
c15 = Caller.new('c15')
callers = [c0, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15]

callers.each do |caller|
  puts call_center.dispatch_call(caller)
end