# Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:

# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
# sum = [];
# (0..10).select { |n| n < 2 ? sum << n : sum << sum[-1] + sum[-2] }.inject(0) { | s, val | if s % 2 == 0; s += val }

# sum = []
# (0..10).select { |n| n < 2 ? sum << n : sum << sum[-1] + sum[-2] }.inject(0) { | s, val | if s % 2 == 0; s += val end }

def fibonacci(n)
  even = []
  sum = []

  (0..n).select do |number|
    if number < 2
      sum << number
    else
      sum << sum[-1] + sum[-2]
    end
  end
  sum.select { |val| even << val if val % 2 == 0 }
  p even.inject(0) { |s, value| s += value }
end

fibonacci(40000)