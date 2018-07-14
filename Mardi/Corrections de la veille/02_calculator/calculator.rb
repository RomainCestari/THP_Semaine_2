# add` takes two parameters and adds them
#
# `subtract` takes two parameters and subtracts the second from the first
#
# `sum` takes an *array* of parameters and adds them all together
#
# # Warning
#
# You may not have enough knowledge yet to complete `sum`. You will probably
# need to use **loops** (e.g. `while`) or **iterators** (e.g. `each`) to
# get the tests to pass.
#
# # Bonus
#
# There are also some bonus exercises for when you finish the regular ones. The bonus round will help teach you test-driven *development*, not simply test-guided *learning*.
#
# Your mission, should you choose to accept it, is to write *tests* for three new methods:
#
# * `multiply` which multiplies two numbers together
# * `power` which raises one number to the power of another number
# * `[factorial](http://en.wikipedia.org/wiki/Factorial)` (check Wikipedia if you forgot your high school math).
#

def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(arr)
  res = 0
  arr.each do |item|
    res += item
  end
  return res
end

def multiply(a, b)
  a * b
end

def power(a, b)
  a**b
end

def factorial(a)
  a = a.to_i
  return 1 if a == 0
  factorial(a - 1) * a
end
