# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  if not arr
    reutrn 0
  else
    sum = 0
    arr.each{ |item| sum +=item}
    return sum
  end
 
end

def max_2_sum arr
  # YOUR CODE HERE
  if not arr
    return 0
  elsif arr.length() ==1
    return arr[0]
  else
    return arr.max(2).sum()
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length() <=1
    return false
  else
    arr.each{
      |i|
      arr.each{
        |j|
        if i!=j and (i + j) ==n
          return true
        end
    }
  }
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s[0] == 'b' or s[0] == "B"
    return TRUE
  elsif s[0] == 'c' or s[0] == "C"
    return TRUE
  elsif s[0] == 'd' or s[0] == "D"
    return TRUE
  elsif s[0] == 'f' or s[0] == "F"
    return TRUE
  elsif s[0] == 'g' or s[0] == "G"
    return TRUE
  elsif s[0] == 'h' or s[0] == "H"
    return TRUE
  elsif s[0] == 'j' or s[0] == "J"
    return TRUE
  elsif s[0] == 'k' or s[0] == "K"
    return TRUE  
  elsif s[0] == 'l' or s[0] == "L"
    return TRUE
  elsif s[0] == 'm' or s[0] == "M"
    return TRUE
  elsif s[0] == 'n' or s[0] == "N"
    return TRUE  
  elsif s[0] == 'p' or s[0] == "P"
    return TRUE  
  elsif s[0] == 'q' or s[0] == "Q"
    return TRUE  
  elsif s[0] == 'r' or s[0] == "R"
    return TRUE  
  elsif s[0] == 's' or s[0] == "S"
    return TRUE  
  elsif s[0] == 't' or s[0] == "T"
    return TRUE  
  elsif s[0] == 'v' or s[0] == "V"
    return TRUE  
  elsif s[0] == 'w' or s[0] == "W"
    return TRUE  
  elsif s[0] == 'x' or s[0] == "X"
    return TRUE  
  elsif s[0] == 'y' or s[0] == "Y"
    return TRUE  
  elsif s[0] == 'z' or s[0] == "Z"
    return TRUE 
  else
    return FALSE
  end
    
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.length == 0
    return false
  elsif s.length ==1
    if s == '0'
      return true
    else
      return false
    end
  else
    if s.chars.all?(/[01]/)  
      return s.to_i(2)%4 == 0
    else
      return false
    end
  end

end


# Part 3

class BookInStock
  def isbn
    @isbn
  end
  def price
    @price
  end
  def isbn=(isbn)
    @isbn = isbn
  end
  def price=(price)
    @price = price
  end
# YOUR CODE HERE
  def initialize(isbn,price)
    @isbn= isbn
    @price = price
    if isbn.length() ==0
     raise ArgumentError.new(" The ISBN number should not be the empty string. ")
    end
    if price<=0
      raise ArgumentError.new("The price should not be less than or equal to zero.")
    end
    
  end
  def price_as_string
    value = @price.to_s
    if value.match('\.\d{1}$')
      value +='0'
    elsif value.match('\.\d{2}$')
      
      
    else 
      value +='.00'
    end
    return  '$'+ value
  end

end
