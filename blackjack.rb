class BigCasino
  puts "Welcome to the Nicklaus casino would you like to play blackjack Yes'Y', No 'N' "
    
    answer = gets.chomp

  Deck = %w[Ace-of 2-of 3-of 4-of 5-of 6-of 7-of 8-of 9-of 10-of Jack-of Queen-of King-of].product(%w[-clubs -diamonds -hearts -spades]).map(&:join)

  def initialize(decks=1)
    @decks = decks
  end

  def shuffle
    @playing_deck = (Deck*@decks).shuffle
  end

  def deal(players=1, cards=2)
    shuffle
    @hand = Array.new(players) { Array.new }

    @hand.map { |hand| cards.times { hand << @playing_deck.pop } }
  end

  def display
    @hand.each_with_index { |cards, i| puts "Player #{i+1}: #{cards.join(' | ')}" }
    puts "Cards used: #{@hand.flatten.size}"
    puts "Cards remaining: #{@playing_deck.size}"
  end
  

  private :shuffle   
end

game1 = BigCasino.new   
game1.deal   
game1.display   















#my_casino = Casino.new
#
#my_casino.blackjack 
#
#
#{ :clubs => {"Ace" => 1,"2" => 2,"3" => 3,"4" => 4,"5" => 5,"6" => 6,"7" => 7,"8" => 8,"9" => 9,"10" => 10,"Jack" => 11,"Queen" => 12,"King" => 13},
#                :hearts => {"Ace" => 1,"2" => 2,"3" => 3,"4" => 4,"5" => 5,"6" => 6,"7" => 7,"8" => 8,"9" => 9,"10" => 10,"Jack" => 11,"Queen" => 12,"King" => 13}, 
#                :diamonds => {"Ace" => 1,"2" => 2,"3" => 3,"4" => 4,"5" => 5,"6" => 6,"7" => 7,"8" => 8,"9" => 9,"10" => 10,"Jack" => 11,"Queen" => 12,"King" => 13}, 
#                :spades => {"Ace" => 1,"2" => 2,"3" => 3,"4" => 4,"5" => 5,"6" => 6,"7" => 7,"8" => 8,"9" => 9,"10" => 10,"Jack" => 11,"Queen" => 12,"King" => 13}
#              }