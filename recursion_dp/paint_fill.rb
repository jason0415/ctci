# Implement the "paint fill" function that one might see on many image editing
# programs. That is, given a screen (represented by a two-dimensional array of colors),
# a point, and a new color, fill in the surrounding area until the color changes from the
# original color.

class PaintFill

  def self.fill(screen=[], x, y, original_color, new_color)
    return if x < 0 || x > screen[0].size-1 || y < 0 || y > screen.size-1
    if screen[x][y] == original_color
      screen[x][y] = new_color
      fill(screen, x, y-1, original_color, new_color) # Up
      fill(screen, x+1, y, original_color, new_color) # Right
      fill(screen, x, y+1, original_color, new_color) # Down
      fill(screen, x-1, y, original_color, new_color) # Left
    end
  end

end