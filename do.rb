require "./death.rb"



def prompt()
  print "Enter 1 for first choice, or anything for second choice:
  >>>>> "
end


def start()
  puts <<MESSAGE
  You are in the City of Riverstone. You feel a strange presence.
  do you explore the 1.catacombs or the 2.cathedral?
MESSAGE

  prompt;  next_move=gets.chomp


  if next_move.include? "1"
   catacombs()
   elsif
     cathedral()
  end

end

def dead(reason)
  sleep 2
  puts "#{reason}, Awesome."
  deadstart()
end


def flee(from)
  puts "You are running from the cathedral when you find yourself out of breath in a forest"
  puts "You turn your sit down on a nearby log, and it screams at you!
  'How dare you sit on me, the ALMIGHTY STANLEY'"
  sleep 2
  puts "'You must now challenge me , STANLEY, in a dice game to the death' \n Will you accept?
  \n 1.yes 2.try to run"
  prompt; next_move = gets.chomp
if next_move.include? "1"
    puts "You roll the wooden die Stanley gives you"
    number=1 + rand(100)
    if number > 69
      dead("You roll #{number}. You beat STANLEY and walk out of the forest, to the safety of a nearby town \n You sleep at the inn, but you die in your sleep")
    else
      dead("You roll #{number}. STANLEY then grabs you 'STANLEY ALWAYS GETS HIS WAY!' he then grabs you with his branches\n He throw you so high that you are above the clouds, before returning to the ground with a messy splat")
    end
  else
    dead("You try to escape but STANLEY stabs you through the chest with a branch, turning you into a human shishkabob, you bleed out and die hanging from his branch")
  end
end

def catacombs()
  puts <<MESSAGES
  You walk in the catacombs and notice the eerie silence that pervades.
  There are empty caskets lining the path and you see a light at the end of the hall
  that seems to be held by a dark figure, and its getting closer.
MESSAGES

  sleep 2

  puts "Will you 1.Hide is a casket or 2.Approach the figure?"

  prompt; next_move=gets.chomp

  if next_move.include? "1"
    sleep 1
    dice_roll("You hide in the casket, and you feel it start to move \n
    You find yourself in the cathedral with the priest \n He chains you up. ")


  else 
    sleep 1
    dead("You follow the light and approach the figure
    \nYou now see that its spirit of your serial killer uncle
     \nHe repeatedly stabs you with a rusty spoon.
      \n You bleed out and die")

  end
end

def cathedral()
  puts "You encounter the priest who seems like he isnt all there.
  \nHis robes are tattered and stained
  \nyou hear a faint grinding sound coming from the back
   \n He says, 'Come child, I've got something for you.' \n Will you go with him? \n 1.yes 2.no"

prompt; next_move = gets.chomp

  if next_move.include? "1"
  sleep 2
  dice_roll("He grasps your hand. 'Fantastic. You will be my next offering.'")
else dead("You turn to leave and he chases you, You narrowly escape and leave Riverstone, but trip and smash your head on a rock \n dead")
  end
end

def dice_roll(generated_number)
  puts "#{generated_number} You are chained to a cross. You might have a chance to flee. \n Only numbers over 3 win."

  sleep 2
  puts "Here is your only chance"
  sleep 2
  number=1 + rand(6)
  if number <= 3
    dead("Your number was #{number}. You get repeatedly stabbed by the priest \n You bleed out and die ")
  else
    flee( puts "Your number was #{number}. You find that your chains have loosened and you escape through a small window \n leaving Riverstone , you must think you're safe")
  end
end
