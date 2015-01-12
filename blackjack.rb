# Blackjack.rb
# Still need to figure out the way to appropriately calculate the ACE's value
# Still need to build the dealer's playing model  

# Constants
ACE   = "ACE"
JACK  = "JACK"
QUEEN = "QUEEN"
KING  = "KING"

def say(msg)
  puts ("=> #{msg}")
end

def hand_card_to_player(player_hand, deck)
  card = deck.shift 
  player_hand.push(card)
end

def describe_player_hand(player_hand)
    puts
    player_hand.each do |card|
      puts "#{card[1]} of #{card[0]}"
    end
    puts
end

def calculate_hand_total(player_hand)
  hand_total = 0
  player_hand.each do |card|
    if card[1] == ACE
      hand_total += 1
    elsif (card[1] == JACK) || (card[1] == QUEEN) || (card[1] == KING)
    hand_total += 10
    else
      hand_total += card[1]
    end
  end
  hand_total
end

def assert_if_blackjack_or_bust(player_hand)
  if calculate_hand_total(player_hand) == 21
    say "BLACKJACK!"
    @game_still_on = false
  elsif calculate_hand_total(player_hand) > 21
    say "BUST!"
    @game_still_on = false
  else 
    @game_still_on = true
  end
end


puts
say "Good evening sir, welcome to the blackjack table at Tim's Casino."
puts
sleep 0.25
say "May I have your name ?"
USER_NAME = gets.chomp
say "Thank you, #{USER_NAME}."
sleep 0.25


begin

  want_to_play = true
  @game_still_on = true
  want_to_hit = true 

  game_deck = []
  suits = ['HEARTS', 'DIAMONDS', 'SPADES', 'CLOVES']
  cards = [ACE,2,3,4,5,6,7,8,9,10,JACK,QUEEN,KING]

  game_deck = suits.product(cards)
  game_deck.shuffle!

  # Hand the player two cards
  user_hand = []
  2.times {hand_card_to_player(user_hand, game_deck)}
  # Tell the player his hand
  say "Your cards are:"
  describe_player_hand(user_hand)
  sleep 0.5

  calculate_hand_total(user_hand)
  assert_if_blackjack_or_bust(user_hand)

  
  if @game_still_on
    # Hand the dealer one card 
    dealer_hand = []
    hand_card_to_player(dealer_hand, game_deck)
    # tell the player the dealers hand 
    say "The dealer's first card is:"
    describe_player_hand(dealer_hand)
    sleep 0.5
  end

  while want_to_hit && @game_still_on

    begin
      say "Do you want another card, #{USER_NAME} ? (yes/no)"
      wants_another_card = gets.chomp.downcase
      if wants_another_card == 'yes'
        say "There you go."
        sleep 0.5
        hand_card_to_player(user_hand, game_deck)
      elsif wants_another_card == 'no'
        say "Okay then."
        want_to_hit = false
      else
        say "I'm sorry, I didn't get that. Please answer by 'yes' or 'no' "
      end
      say "Your cards are:"
      describe_player_hand(user_hand)
      calculate_hand_total(user_hand)
      assert_if_blackjack_or_bust(user_hand)
    end until (wants_another_card == 'yes') || (wants_another_card == 'no')

  end 

  # if game_still_on

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


say "Another hand, #{USER_NAME}? (yes/no)"
if gets.chomp.downcase == "yes"
  want_to_play == true
else
  want_to_play == false
  break
end

end until want_to_play == false

say "Thank you for playing, #{USER_NAME}."
say "I hope we'll see you again soon!"