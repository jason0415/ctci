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