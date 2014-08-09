# Write a program to swap odd and even bits in an integer with as few instructions
# as possible (e.g., bit 0 and bit 1 are swapped, bit 2 and bit 3 are swapped, and
# soon).

class SwapOddEvenBits

  # We can approach this as operating on the odds bits first, and then the even bits. Can
  # we take a number n and move the odd bits over by 1 ? Sure. We can mask all odd bits
  # with 10101010 in binary (which is 0xAA), then shift them right by 1 to put them in the
  # even spots. For the even bits, we do an equivalent operation. Finally, we merge these
  # two values.
  def self.swap(num)
    # Works for 32-bit
    odd_mark = 0b10101010101010101010101010101010
    even_mark = 0b01010101010101010101010101010101
    num = ((odd_mark & num) >> 1) |
        ((even_mark & num) << 1)
    num
  end

end