#The user is told they're facing forward and can type 'forward', 'left', or 'right'.
#If the user enters 'right', they die (goblin).
#If the user enters 'left', they die (werewolf).
#If the user enters 'forward', they're told they live, and can move again.
#If the user enters anything other than 'right', 'left', or 'forward', they just get the message from 1 again.
#If the user enters 'right', they die (goblin).
#If the user enters 'left', they die (werewolf).
#If the user enters 'forward', they're told they won and the game exits.
#If the user enters anything other than 'right', 'left', or 'forward', they just get the message from 4 again.

puts "Welcome to this simple text-based adventure game!"
puts "You can move in three directions; forward, left and right."
puts "Your goal is to find the right combination of moves to reach the end and win."

f_counter = 0

until f_counter == 2 do #As the win condition is to move forward twice
  puts "Please enter a direction to move:"
  input = gets.chomp
  case input
  when "right"
    puts "A goblin appears!\nYou are dead."
    break
  when "left"
    puts "A werewolf houls and runs towards you!\nYou are dead."
    break
  when "forward"
    puts "You have survived this move, you can move again."
    f_counter += 1
  end
end

if f_counter == 2
  puts "Congrats, you have won!"
end

exit