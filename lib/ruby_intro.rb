# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  total = 0
  arr.each{|x| total += x}
  return total
end

def max_2_sum arr
  # YOUR CODE HERE
  return 0 if arr.empty? 
  return arr[0] if arr.length == 1
  sum = arr.max 
  arr.delete_at(arr.find_index(sum))
  sum += arr.max 

end

def sum_to_n? arr, n
  # YOUR CODE HERE
  res = false 
  arr.each do |x| 
  	arr.each do |y|
  		next if arr.find_index(x) == arr.find_index(y) 
  		res = x+y == n ? true : false 
  		 # puts res , x, y , n , "\n"
  		return true if res 
  	end 
  end
  return res 
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, "+ name 
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return false if s.empty?
  lower_s = s.downcase 
  return true  if /^[bcdfghjklmnpqrstvwxyz]/i === lower_s else return false 
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return false if not /^[10]+$/i === s 
  number = s.to_i(2)
  return true if number %4 == 0
end

# Part 3

class BookInStock
# YOUR CODE HERE
	attr_accessor :isbn,:price
	def initialize(isbn , price)
		 raise ArgumentError, 'Argument is not numeric' if isbn.empty? or price <= 0 
		@isbn = isbn
		@price = price
		
	end

	def price_as_string
		"$%.2f" %@price
		
	end


end

