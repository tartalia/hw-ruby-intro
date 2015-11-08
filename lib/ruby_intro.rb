# When done, submit this entire file to the autograder.

# Part 1
def sum arr
  sum = 0
  arr.each { | item | sum += item }
  sum
end

def max_2_sum arr
  sum = 0
  s_arr = arr.sort
  return arr[0] if arr.size == 1
  return 0 if arr.size == 0
  return s_arr[-2] + s_arr[-1]
end

def sum_to_n? arr, n
  return (n == 0) if arr.size == 0
  arr.size.times do | i |
    for j in i+1...arr.size
      return true if arr[i] + arr[j] == n
    end
  end
  false
end

# Part 2
def hello(name)
  'Hello, ' + name
end

def starts_with_consonant? s
  return false if s.empty?
  carac = (/[A-Z]/ =~ s[0].capitalize) != nil
  vowel = (/[AEIOU]/ =~ s[0].capitalize) != nil
  return true if carac && !vowel
  false
end

def binary_multiple_of_4? s
  return false if s.empty?
  return false if (/[^0|1*]/ =~ s) != nil
  bin_num = 0
  i = s.size - 1
  c = 0
  while i >= 0
    bin_num = bin_num + (s[i].to_i * (2**c))
    c += 1
    i -= 1
  end
  return true if bin_num % 4 == 0 else false
end

# Part 3
class BookInStock
  attr_reader :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0.0
    @isbn = isbn
    @price = Float(price)
  end

  def isbn=(isbn)
    raise ArgumentError if isbn.empty?
    @isbn = isbn
  end

  def price=(price)
    raise ArgumentError if price <= 0.0
    @price = Float(price)
  end

  def price_as_string
    price = @price.to_s
    n = price.slice(0, price.index('.'))
    frac = price.slice(price.index('.'), price.size) + '00'
    return '$' + n + frac.slice(0, 3)
  end
end
