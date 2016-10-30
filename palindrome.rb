# A palindromic number reads the same both ways.
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

def palindrome?(n)
  n == n.to_s.reverse.to_i
end

def largest_palidrome
  start = 111
  finish = 999
  palindrome = []
  range_of_values = start.upto(finish)

  range_of_values.each do |outer| # find a better way to do nesting loops.
    range_of_values.each do |inner|
    p inner
      multiply = outer * inner
      palindrome << multiply if palindrome?(multiply)
    end
  end
  p palindrome.max

end

largest_palidrome
