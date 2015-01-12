# Trying to create a new deck for each BJ game. 

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

@deck_for_game = {}

def generate_deck(some_deck)
  some_deck = DECK
end

p generate_deck(@deck_for_game)
p @deck_for_game

def generate_deck_v2(some)
  some_deck = DECK.clone
end

p generate_deck_v2(@deck_for_game)
p @deck_for_game

def generate_deck_v3(some_deck)
  some_deck = Marshal.load(Marshal.dump(DECK))
end

p generate_deck_v3(@deck_for_game)
p @deck_for_game
