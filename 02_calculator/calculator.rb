#write your code here
def add(first_number, second_number)
  first_number + second_number
end

def subtract(first_number, second_number)
  first_number - second_number
end

def sum(array_to_sum)
  sum = 0
  if array_to_sum.empty?
    return sum
  else
    array_to_sum.each do |number|
      sum += number
    end
  end
  return sum
end

def multiply(first, second, *remaining_numbers)
  total = first * second
  if remaining_numbers.empty?
    return total
  else
    remaining_numbers.each do |number|
      total *= number
    end
  end
  total
end

def power(first, second)
  first**second
end

def factorial(number)
  if (number == 0 || number == 1)
    return 1
  else
    return number * factorial(number-1)
  end
end