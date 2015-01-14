# BJ Solution video

def calculate_total(cards) # takes card under this format : [["S", "8"], ["H", "K"]...]
  arr = cards.map{|e| e[1]}

  total = 0
  arr.each do |value|
    if value == "A"
      total += 11
    if value.to_i == 0 # J, Q, K
      total += 10
    else
      total += value.to_i
    end
  end

  # Correct for Aces
  arr.select{|e| e == "A"}.count.times do
    (total -= 10) if (total > 21)
  end

  total
end

  # This only works if 1 ace
  # if arr.include?("A") && total > 21
  #   total -= 10
  # end