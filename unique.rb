first_num = 4
second_num = 4
def max(first_num = 0, second_num = 0, *rest)
  if rest.size > 0
    puts "Seriously #{rest}?"
  end
  if first_num.nil?
    puts "Null"
  end
  if second_num.nil?
    puts "Nada"
  end
  if first_num.to_s > second_num.to_s
    puts first_num
  elsif second_num.to_s > first_num.to_s
        puts second_num
  else
        puts "Your numbers are the same"
  end
end

puts max(first_num, second_num)

def test

puts max(1.0,1.0)
puts max(nil, nil)
puts max({},{})
puts max([],[])
puts max(true)

end

puts test
