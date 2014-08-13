# Imagine you have a call center with three levels of employees: respondent,
# manager, and director. An incoming telephone call must be first allocated to a
# respondent who is free. If the respondent can't handle the call, he or she must
# escalate the call to a manager. If the manager is not free or not able to handle it,
# then the call should be escalated to a director. Design the classes and data structures
# for this problem. Implement a method dispatchCall() which assigns a
# call to the first available employee.

class Employee
  def initialize(name)
    @name = name
    @free = true
    @caller = nil
  end
  def free?
    @free
  end
  def start_conversation(caller)
    @free = false
    @caller = caller
  end
  def end_conversation
    @free = true
    @caller.disconnect
  end
end

class Respondent < Employee
  def to_s
    "Respondent #{@name}"
  end
end

class Manager < Employee
  def to_s
    "Manager #{@name}"
  end
end

class Director < Employee
  def to_s
    "Director #{@name}"
  end
end

class Caller
  def initialize(name)
    @name = name
    @online = true
  end
  def set_handler(handler)
    @employee = handler
  end
  def disconnect
    @employee = nil
    @online = false
  end
  def message(msg)
    puts msg
  end
end

class EmployeeFactory
  def self.create(employee_type, name)
    case employee_type
      when 'respondent'
        Respondent.new(name)
      when 'manager'
        Manager.new(name)
      when 'director'
        Director.new(name)
      else
        nil
    end
  end
end

require 'singleton'
class CallCenter
  include Singleton

  attr_reader :employees, :caller_queues
  def initialize
    @respondents = []
    @respondents << EmployeeFactory.create('respondent', 'r0')
    @respondents << EmployeeFactory.create('respondent', 'r1')
    @respondents << EmployeeFactory.create('respondent', 'r2')
    @respondents << EmployeeFactory.create('respondent', 'r3')
    @respondents << EmployeeFactory.create('respondent', 'r4')

    @managers = []
    @managers << EmployeeFactory.create('manager', 'm0')
    @managers << EmployeeFactory.create('manager', 'm1')
    @managers << EmployeeFactory.create('manager', 'm2')

    @directors = []
    @directors << EmployeeFactory.create('director', 'd0')
    @directors << EmployeeFactory.create('director', 'd1')

    @employees = [@respondents, @managers, @directors]

    @caller_queues = []
  end
  def dispatch_call(caller)
    @employees.each do |employee|
      employee.each do |e|
        if e.free?
          e.start_conversation(caller)
          caller.set_handler(e)
          return e
        end
      end
    end
    caller.message('We are busy, please wait...')
    @caller_queues << caller
    nil
  end
end