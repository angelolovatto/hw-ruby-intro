# When done, submit this entire file to the autograder.
# Angelo Lovatto                        n_usp: 9293435
# Julio Kenji Ueda                      n_usp: 9298281

# Part 1

def sum(array)
  total = 0
  array.each do |num| 
    total += num
  end
  return total
end

def max_2_sum(array)
  if array.length == 0
    return 0
  elsif array.length == 1
    return array[0]
  else
    num1 = array[0..1].max
    num2 = array[0..1].min
    for index in 2...array.length
      if array[index] > num1
        num2 = num1
        num1 = array[index]
      elsif array[index] > num2
        num2 = array[index]
      end
    end
    return num1 + num2
  end
end

def sum_to_n?(array, n)
  if array.length < 2
    return false
  else
    for i in 0...array.length
      for j in i+1...array.length
        if array[i] + array[j] == n
          return true
        end
      end 
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name  
end

def starts_with_consonant?(s)
  if s.length < 1
    return false
  else
    if /[aeiou]/.match(s[0].downcase) == nil and /\p{Alpha}/.match(s[0]) != nil
      return true
    else
      return false
    end
  end
end

def binary_multiple_of_4?(s)
  if s.length == 0
    return false
  end
  number = 0
  for i in 0...s.length
    if /[01]/.match(s[i]) == nil 
      return false
    else
      number += 2**(s.length-1-i) * s[i].to_i
    end
  end
  if number % 4 == 0
    return true
  else 
    return false
  end
end

# Part 3

class BookInStock

  def initialize(number, cost)
    if number.length == 0 or cost <= 0
      raise ArgumentError 
    end
    @isbn = number
    @price = cost
  end
  
  def isbn
    @isbn
  end
  
  def price
    @price
  end
  
  def price= cost
    @price = cost
  end
  
  def isbn= number
    @isbn = number
  end
  
  def price_as_string
    return "$" + sprintf('%.2f', @price)
  end
end
