def blackjack
  promt
end

def promt
  puts "Welcome! Would you like to play a game of blackjack? Enter Yes or No"
  play = gets.chomp.downcase
  if play == "yes"
    game_plan
  else play =="no"
    puts "That's too bad. Come back when you feel like playing"
  end
end

def game_plan
  wants_to_play = true
  hand = []
  total = first_move(hand)
  wants_to_play = hit_me(hand)
  if wants_to_play == true
    hit_me(hand)
  end
end

def first_move(hand)
  deal(hand)
  deal(hand)
  total(hand) 
end

def deal(hand)
  card = rand(12)
  puts "You have been dealt a card with a value of #{card}"
  hand << card
end

def total(hand)
  total = 0
  hand.each do |count|
    total += count
  end
  puts "The sum of the cards you have been dealt is #{total}"
  total
end

def hit_me(hand)
  puts "Would you like to hit or stick?"
  yay_or_nah = gets.chomp.downcase
  if yay_or_nah == "stick" && total(hand) < 21
    puts "Sorry! The sum of the cards you have been dealt is less than 21. You lost this round!"
  else
    deal(hand)
    total(hand)
    playing = true
  end  
end

blackjack