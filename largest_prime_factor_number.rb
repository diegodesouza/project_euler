require "prime"

# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

def prime_factors(number)
  p number.prime_division.map { |p| p.first } # or short form uses to_proc
  # p number.prime_division.map(&:first)
end

prime_factors(13195)
prime_factors(600851475143)
