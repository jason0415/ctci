# Given two lines on a Cartesian plane, determine whether the two lines would intersect.

class Line

  attr_reader :slope

  def self.intersected?(line2)
    this.slope - line2.slop == 0
  end

end