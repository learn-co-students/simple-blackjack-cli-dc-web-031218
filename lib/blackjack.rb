def welcome
  puts "Welcome to the Blackjack Table"# code #welcome here
end

def deal_card
  rand(10) + 1
end

def display_card_total(deal_card)
  puts "Your cards add up to #{deal_card}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  answer = gets.chomp
end

def end_game(deal_card)
  puts "Sorry, you hit #{deal_card}. Thanks for playing!"
end

def initial_round
  card_total = deal_card + deal_card
  display_card_total(card_total)
  return card_total
end

def hit?(number)
  prompt_user
  case get_user_input
  when "s"
    return number
  when "h"
    return number + deal_card
  when "anything else"
    return invalid_command
  end
  # code hit? here
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  final_number = initial_round
  until final_number > 21
  final_number = hit?(final_number)
  display_card_total(final_number)
end
  end_game(final_number)
end
