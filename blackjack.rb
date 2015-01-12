# Blackjack.rb 

# This is the standard deck from which the playing deck will be built

DECK = {"ace of hearts"   =>  1, "ace of spades"   =>  1, "ace of squares"   =>  1, "ace of cloves"   =>  1,
        "two of hearts"   =>  2, "two of spades"   =>  2, "two of squares"   =>  2, "two of cloves"   =>  2,
        "three of hearts" =>  3, "three of spades" =>  3, "three of squares" =>  3, "three of cloves" =>  3,
        "four of hearts"  =>  4, "four of spades"  =>  4, "four of squares"  =>  4, "four of cloves"  =>  4,
        "five of hearts"  =>  5, "five of spades"  =>  5, "five of squares"  =>  5, "five of cloves"  =>  5,
        "six of hearts"   =>  6, "six of spades"   =>  6, "six of squares"   =>  6, "six of cloves"   =>  6,
        "seven of hearts" =>  7, "seven of spades" =>  7, "seven of squares" =>  7, "seven of cloves" =>  7,
        "eight of hearts" =>  8, "eight of spades" =>  8, "eight of squares" =>  8, "eight of cloves" =>  8,
        "nine of hearts"  =>  9, "nine of spades"  =>  9, "nine of squares"  =>  9, "nine of cloves"  =>  9,
        "ten of hearts"   => 10, "ten of spades"   => 10, "ten of squares"   => 10, "ten of cloves"   => 10,
        "jack of hearts"  => 10, "jack of spades"  => 10, "jack of squares"  => 10, "jack of cloves"  => 10,
        "queen of hearts" => 10, "queen of spades" => 10, "queen of squares" => 10, "queen of cloves" => 10,
        "king of hearts"  => 10, "king of spades"  => 10, "king of squares"  => 10, "king of cloves"  => 10}

def say(msg)
  puts ("=> #{msg}")
end

def generate_deck(some_deck)
  some_deck = DECK
end
 
# puts
# say "Good evening sir, welcome to the blackjack table at Tim's Casino."
# puts
# sleep 0.25
# say "May I have your name ?"
# PLAYER_NAME = gets.chomp
# say "Thank you, #{PLAYER_NAME}."

playing_deck = {}
generate_deck(playing_deck)
p playing_deck

begin

  want_to_play = true

  playing_deck = {}
  generate_deck(playing_deck)
  p playing_deck

  # Hand the player two cards
  # Tell the player his hand
  # Hand the dealer one card 
  # tell the player the dealers hand 


  # begin

  #   Calculate the players cards value
  #     if value > 21 
  #       Player loses -> "BUST!"
  #     elsif value == 21
  #       Player wins  -> "BLACKJACK!"
  #     elsif value < 21 
  #       Game continues
  #       Ask player if he wants to go again
  #       if yes
  #         deal another card 
  #         calculate players cards value
  #       else return the players cards value
  #         tell the player his hand 
  #         tell the player the dealers hand 

  # end until player "stays" || blackjack || bust 

  #   if !blackjack && !bust && player "stays"
  #     hand the dealer another card 

  #     begin 
  #     tell the player the dealers hand 
  #     calculate the dealers card value 
  #       if value > 21
  #         Dealer loses -> "BUST!" 
  #         Player wins
  #       elsif value == 21 
  #         Dealer wins  -> "BLACKJACK!"
  #       elsif value < 17
  #         hand the dealer another card 
  #       elsif value >= 17 
  #         if dealer_total > player_total 
  #           dealer wins
  #         elsif player_total > dealer_total
  #           hand the dealer another card 
  #         end
  #       end
  #     end until blackjack || bust 


say "Another hand, #{PLAYER_NAME}? (yes/no)"
if gets.chomp.downcase == "yes"
  want_to_play == true
else
  want_to_play == false
  break
end

end until want_to_play == false

say "Thank you for playing, #{PLAYER_NAME}."
say "I hope we'll see you again soon!"