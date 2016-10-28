#write your code here
def add(first, second)
  total = first+second
  return total
end

def subtract(first, second)
  total = first-second
  return total
end

def sum(array)
  total = 0
  array.each do |number|
  	total += number
  end
  return total
end

def multiply(first, *second)
  total = first
  second.each do |number|
    total *= number
  end
  return total
end

def power(number, exponent)
  return (number**exponent)	
end

def factorial(number)
  answer = 1
  if number == 0
    return answer
  end
  while number > 0
    answer *= number
    number -= 1  	
  end
  return answer
end