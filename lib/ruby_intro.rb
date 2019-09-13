# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
    arr.reduce(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
    arr.sort.reverse.take(2).reduce(0, :+)
end

def sum_to_n? arr, n
  # YOUR CODE HERE
    arr.combination(2).collect {|x| x[0] + x[1] == n}.any?
end

# Part 2

def hello(name)
  # YOUR CODE HERE
    "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
    !/\A[a-zA-Z&&[^aAeEiIoOuU]]/.match(s).nil?
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
    !/\A(([01]*100+)|(0+))\Z/.match(s).nil?
end

# Part 3

class BookInStock
# YOUR CODE HERE
    def initialize(isbn, price)
        raise ArgumentError if isbn == ""
        raise ArgumentError if price <= 0
        @isbn = isbn
        @price = price
    end
    
    def isbn
        @isbn
    end
    
    def isbn=(isbn)
        @isbn = isbn
    end
    
    def price
        @price
    end
    
    def price=(price)
        @price = price
    end
    
    def price_as_string()
        "$" + sprintf("%0.02f", @price)
    end
end
