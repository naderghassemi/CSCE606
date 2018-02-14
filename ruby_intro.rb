# When done, submit this entire file to the autograder.
#Nader Ghassemi
#Define a method sum(array) that takes an array of integers as an argument and returns the sum of its elements. For an empty array it should return zero. Run associated tests via: $ rspec spec/part1_spec.rb:5
# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0
  arr.each {|a| sum += a}
  return sum
end

def max_2_sum arr

  # YOUR CODE HERE
  if arr.length == 0
    return 0
  end
  if arr.length == 1
    return arr[0]
  end
  res = arr.sort.last(2).sum
  return res
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  hash = Hash.new
  a = arr.length - 1
  if a.zero?
    return false
  end
  while a >= 0
    if hash.key?(n - arr[a])
      return true
    end
    hash[arr[a]] = true
    a -= 1
  end
  return false
end
#Define a method max_2_sum(array) which takes an array of integers as an argument and returns the sum of its two largest elements. For an empty array it should return zero. For an array with just one element, it should return that element. Run associated tests via: $ rspec spec/part1_spec.rb:23
# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return s =~ /\A(?=[^aeiou])(?=[a-z])/i
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s == "0"
    return true
  end
  if s.count('01') != s.size || s[-2,2] != "00"
    return false
  end
  return true
end


# Part 3
#Define a method sum_to_n?(array, n) that takes an array of integers and an additional integer, n, as arguments and returns true if any two elements in the array of integers sum to n. sum_to_n?([], n) should return false for any value of n, by definition. Run associated tests via: $ rspec spec/part1_spec.rb:42
class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price
  def initialize isbn, price
    # Instance variables
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    format("$%.2f", @price)
  end
end
