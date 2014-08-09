require '../update_m_to_n'

n = 0b10010101010
m = 0b10011

puts "Update n with m from 2 to 6: #{UpdateMToN.update(n, m, 2, 6).to_s(2)}"