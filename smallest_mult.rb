# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

def smallest_mult(min, max)
  (min..max).inject(:lcm)
end

p smallest_mult(1, 10)
p smallest_mult(1, 20)
