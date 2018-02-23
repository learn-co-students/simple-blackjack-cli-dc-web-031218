
def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  card = rand(11) + 1
  return card
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
  card_total
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  input = gets.chomp
  return input
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card_total = 0
  2.times do card_total += deal_card end
  display_card_total(card_total)
  card_total
end

def hit?(card_total)
  # code hit? here
  prompt_user
  input = get_user_input
  if input == "h"
    new_card = deal_card
    card_total += new_card
  elsif input == "s"
    #do nothing
  else
    invalid_command
  end

  return card_total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  hand = initial_round
  until hand > 21
    hand = hit?(hand)
    display_card_total(hand)
  end
  end_game(hand)
end
