def add(a,b)
  (a + b )
end

def subtract(a,b)
  (a-b)
end

def sum(sum)

  a = []
  b = [7]
  c = [7,11]
  d = [1,3,5,7,9]

  sum.inject(0) {|total, sum| total + sum}
end

def multiply (a,b)
  (a * b)
end

def power (a,b)
  (a ** b)
end

def factorial (num)
  (1..(num.zero? ? 1 : num)).inject(:*)
end
