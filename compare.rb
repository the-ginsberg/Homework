first_num = 4
second_num = 4
def max(first_num,second_num)
  if first_num > second_num
  	puts first_num
  elsif second_num > first_num
		puts second_num
  else
		puts "Your numbers are the same"
  end
end

puts max(first_num, second_num)

def test

puts max(1.0,1.0)
puts max(nil,nil)
puts max({},{})
puts max([],[])
puts max(true)

end
