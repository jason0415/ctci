# Explain the data structures and algorithms that you would use to design an
# in-memory file system. Illustrate with an example in code where possible.

class Entry

  attr_accessor :name

  def initialize(name='undefined', parent_directory)
    @name, @parent_directory = name, parent_directory
    @created_at = Time.now
  end

  def delete?
    return false if @parent_directory.nil?
    @parent_directory.delete(this)
  end

  # Recursion
  def full_path
    if @parent_directory.nil?
      @name
    else
      "#{@parent_directory.full_path} / #{@name}"
    end
  end

end

class MyFile < Entry

  attr_accessor :content
  attr_reader :size

  def initialize(name='undefined', parent_directory, size)
    super(name, parent_directory)
    @size = size
  end

end

class Directory < Entry

  attr_reader :contents

  def initialize(name='undefined', parent_directory)
    super(name, parent_directory)
    @contents = []
  end

  def add(item)
    @contents << item
  end

  def delete?(item)
    @contents.delete(item)
  end

  # Recursion
  def size
    size = 0
    @contents.each do |entry|
      size += entry.size
    end
    size
  end

  # Recursion
  def number_of_files
    count = 0
    @contents.each do |entry|
      if entry.is_a? MyFile
        count += 1
      elsif entry.is_a? Directory
        count += entry.number_of_files
      end
    end
    count
  end

end