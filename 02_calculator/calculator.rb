#write your code here
def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(array)
  array.inject(0) do |sum, item|
  sum += item
  end
end

def multiply(*num)
  total = num.inject(1, :*)
end

def power(a, b)
  a**b
end

def factorial(a)
  fact = 1
  while a > 0
    fact *= a
    a -= 1
  end
  return fact
end
