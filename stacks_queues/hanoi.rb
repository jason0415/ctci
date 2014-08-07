# In the classic problem of the Towers of Hanoi, you have 3 towers and N disks of
# different sizes which can slide onto any tower. The puzzle starts with disks sorted
# in ascending order of size from top to bottom (i.e., each disk sits on top of an
# even larger one). You have the following constraints:
# (1) Only one disk can be moved at a time.
# (2) A disk is slid off the top of one tower onto the next tower.
# (3) A disk can only be placed on top of a larger disk.
# Write a program to move the disks from the first tower to the last using stacks.

class Hanoi

  def self.solution(n, from, inner, to)
    if n == 1
      puts "Move Disk 1 from #{from}, to #{to}"
      return
    end
    solution(n-1, from, to, inner)
    puts "Move Disk #{n} from #{from}, to #{to}"
    solution(n-1, inner, from, to)
  end

end