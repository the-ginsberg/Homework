class Fizzy
def uptohundred
  1.upto(100) do @n
  end
end

def fizzBuzz
  if @n % 3 == 0 && @n % 5 == 0
    puts "FizzBuzz"
  end
end

def buzz
  @n % 5 == 0
  puts "Buzz"
end

def fizz
  @n % 3 == 0
  puts "Fizz"
end

end

uptohundred
fizzBuzz
buzz
fizz
Fizzy

# 1.upto(100) do |n|
#      if n % 3 == 0 && n % 5 == 0
#        puts "FizzBuzz"
#      elsif n % 5 == 0
#        puts "Buzz"
#      elsif n % 3 == 0
#        puts "Fizz"
#      else
#        puts n
#      end
#    end
