# Triangle Project Code.

def isosceles_test(a, b, c)
  [
    [a, b, c],
    [a, c, b],
    [b, c, a],
  ].each do |eq1, eq2, ne|
    return true if eq1 == eq2 and eq1 != ne
  end
  return false
end

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  if a == 0 and b == 0 and c == 0
    fail TriangleError
  elsif a < 0 or b < 0 or c < 0
    fail TriangleError
  elsif a + b <= c or a + c <= b or b + c <= a
    fail TriangleError
  end
  
  if a == b and a == c and b == c
    return :equilateral
  elsif isosceles_test(a, b, c)
    return :isosceles
  elsif a != b and a != c and b != c
    return :scalene
  end
  
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
