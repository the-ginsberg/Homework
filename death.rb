require "./do.rb"

def deadstart()
puts "Xx"*50
puts "You are now in the afterlife"
which
end

def which
  puts "Do you want to go to hell?"
  puts "1.yes 2.no"
  prompt; next_move = gets.chomp
  if next_move.include? "1"
    puts "For choosing to go to Hell, You get a nice section to yourself to spend eternity \n with private dancers"
else
  puts "Too bad, You are still going to hell, and you will burn for eternity"
end
end
