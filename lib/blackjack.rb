def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(ct)
  puts "Your cards add up to #{ct}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(ct)
  puts "Sorry, you hit #{ct}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end

def invalid_command
  puts "Please enter a valid command"
end

def hit?(ct)
   valid = ["h" , "s"]
   prompt_user
   input = get_user_input
   until valid.include?(input)
     invalid_command
     prompt_user
     input = get_user_input
   end 
   if input == "h"
     ct += deal_card
   end 
   ct
end


#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome 
  ct = initial_round
  until ct > 21 
   ct = hit?(ct)
   display_card_total(ct)
 end
 end_game(ct)
end
    
