require '../check_prime'

(0..19).each do |i|
  puts "#{i}: #{CheckPrime.prime?(i)}"
end