
def newYear(count =1)
  count.times do
    10.downto(1) do |n|
      puts n
      sleep(1)
    end
  puts "Happy New Year!"

  end
end

puts newYear
