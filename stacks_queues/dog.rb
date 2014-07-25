class Dog

  attr_accessor :timestamp, :name

  def initialize(name)
    @name = name
  end

  def to_s
    @name
  end

end