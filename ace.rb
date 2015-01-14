# ace.rb 

# Create a method that returns the correct value for the ace 

ACE   = "ACE"
JACK  = "JACK"
QUEEN = "QUEEN"
KING  = "KING"

def calculate_hand_total(player_hand, player_total)
  player_hand.each do |card|
    if card[1] == ACE
      if player_total > 10
        player_total += 10
      else 
        player_total += 1
      end
    elsif (card[1] == JACK) || (card[1] == QUEEN) || (card[1] == KING)
      player_total += 10
    else
      player_total += card[1]
    end
  end
  player_total
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


game_deck = []
suits = ['HEARTS', 'DIAMONDS', 'SPADES', 'CLOVES']
cards = [ACE,2,3,4,5,6,7,8,9,10,JACK,QUEEN,KING]

game_deck = suits.product(cards)
game_deck.shuffle!

# Hand the player two cards
user_hand = []
user_total = 0 
user_hand.push(['HEARTS', ACE])
user_hand.push(['HEARTS', 9])
hand_card_to_player(user_hand, game_deck)
describe_player_hand(user_hand)
p calculate_hand_total(user_hand, user_total)