# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  
  summation = arr.sum
  return summation
end

def max_2_sum arr
  return 0 if arr.length() == 0
    
  
  arr.max(2).reduce(:+)
end

def sum_to_n? arr, n
  return false if arr.length() == 0

  !!arr.combination(2).detect { |a,b| a + b == n}
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  
  if s.is_a? String
    down_s = s.downcase
    ["a", "e", "i", "o", "u"].include?(down_s[0]) || down_s.length() == 0 || !down_s.match?(/^[[:alpha:]]+$/) ? false : true 
  else
    return false
  end
end

def binary_multiple_of_4? s
  two_power = 0
  total = 0

  if s.is_a? String and s.chars.all? {|x| x =~ /[01]/} and s.length > 0
    digits = s.chars.reverse
    digits.each do |digit|
      total += digit.to_i*2**two_power

      two_power += 1
    end
    return total%4 == 0 
  else 
    return false
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price
  def initialize(isbn, price)
    # if isbn == "" || price < 0
    #   raise ArgumentError.new("ERROR") 
    # end 
    self.isbn = isbn
    self.price = price
  end

  def isbn=(isbn)
    if isbn == ""
      raise ArgumentError.new("ERROR, isbn can't be empty string")
    end
    @isbn = isbn
  end

  def price=(price)
    if price <= 0
      raise ArgumentError.new("ERROR, price can't be less than zero")
    end
    @price = price
  end

  def price_as_string(price=@price)
    
    string_price = "$#{'%.2f' % price}"
    return string_price
  end
end


test = ""
puts binary_multiple_of_4? test