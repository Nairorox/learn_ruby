#write your code here
def add a, b
return a + b
end

def subtract a, b
  return a - b
end

def sum array
    sum = 0
    array.each do |add|
      sum += add
    end
  return sum
end

def multiply array
  sum = 1.00
  array.each do |multiple|
    sum *=  multiple
  end
  return sum
end

def power a, b
return a**b
end

def factorial a
  i = a
  if i == 0
    return 0
  end
  sum = 1
  while i > 1
    sum *= i
    i -= 1
  end
return sum
end
