# When done, submit this entire file to the autograder.

# Part 1

def sum (arr=[])

  return 0 if arr.empty?
  
  total=0
  arr.each do |elemento|
    total+=elemento
  end
  
  return total

end




def max_2_sum arr=[]

  return 0 if arr.empty?
  
  return arr[0] if arr.length==1
  
  arr.sort!.reverse!
  return arr[0]+arr[1]

end


def sum_to_n? arr=[], n

  return false if arr.empty?

  return false if arr.length==1

  for indice in 0..(arr.length-1)

    for indice_interno in 0..(arr.length-1)
        
      if indice!=indice_interno
        return true if arr[indice]+arr[indice_interno] == n
        
      end
    end
    
  end

  return false

end










# Part 2

def hello(name)
  return "Hello, #{name}"
end
#http://ruby-doc.org/core-1.9.3/Regexp.html
#http://stackoverflow.com/questions/2339695/how-to-convert-a-string-or-integer-to-binary-in-ruby
def starts_with_consonant? s
    s_lower=s.downcase
    if /^[a-z&&[^aeiou]]/.match(s_lower)    
      return true
    else        
      return false
    end
end

def binary_multiple_of_4? s="0"
  return true if s=="0"
  num_decimal = s.to_i(2)
  if num_decimal != 0 and num_decimal%4 == 0
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
attr_accessor :isbn
attr_accessor :price

    def initialize(isbn, price)
        raise ArgumentError if isbn.empty?      
        raise ArgumentError if price.to_i<=0      
        @isbn = isbn
        @price = price
    end
    
    def isbn=(new_isbn)
      @isbn=new_isbn
    end

    #def price_as_string
    #  Money.us_dollar(price).format
   # end

    def price_as_string
      return "$" + sprintf("%.2f", @price)
    end
end
