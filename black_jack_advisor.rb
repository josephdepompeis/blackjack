
player_cards = Array.new
total_cards = 0
soft_token = false
pair_token = false

puts "Which is your first card? 1-9 or JQKA"
card1 = gets.chomp.downcase

player_cards << card1
puts "Which is your second card? 1-9 or JQKA"
card2 = gets.chomp.downcase
player_cards << card2

puts "What is the single dealer card? 1-9 or JQKA"
dealercard1 = gets.chomp.downcase

puts "Your cards are: #{player_cards}"

# check for aces for players and dealer -adds soft
if player_cards[1] == "a" && player_cards[0] == "a"
  player_cards[1] = "11"
  player_cards[0] = "11"
  player_cards.flatten!
    soft_token = false
elsif player_cards[1] == "a"
  player_cards[1] = "11"
  player_cards.flatten!
    soft_token = true
elsif player_cards[0] == "a"
  player_cards[0] = "11"
  player_cards.flatten!
    soft_token = true
end

#check dealer card for JQKA
if dealercard1[0] == "a"
  dealercard1[0] = "11"
elsif dealercard1[0] == "j"
  dealercard1[0] = "10"
elsif dealercard1[0] == "q"
  dealercard1[0] = "10"
elsif dealercard1[0] == "k"
  dealercard1[0] = "10"
end

#convert JKQ to 10
if player_cards[1] == "j"
  player_cards[1] = "10"
  player_cards.flatten!
elsif player_cards[1] == "k"
    player_cards[1] = "10"
    player_cards.flatten!
elsif player_cards[1] == "q"
      player_cards[1] = "10"
      player_cards.flatten!
end

#convert JKQ to 10
if player_cards[0] == "j"
  player_cards[0] = "10"
  player_cards.flatten!
elsif player_cards[0] == "k"
    player_cards[0] = "10"
    player_cards.flatten!
elsif player_cards[0] == "q"
      player_cards[0] = "10"
      player_cards.flatten!
end

# check for pairs, give pair token
if player_cards[1] == player_cards[0]
  pair_token = true
end

puts "Your cards after converting AJQK : #{player_cards}"

#calculates totals
total_cards = (player_cards[1].to_i) + (player_cards[0].to_i)
puts "total of both cards is: #{total_cards}"
puts "the dealer has:  #{dealercard1}"

#hashes
dealerhard = {"2" =>
{"5" => "Hit",
"6" => "Hit",
"7" => "Hit",
"8" => "Hit",
"9" => "Double if possible, otherwise hit",
"10" => "Double if possible, otherwise hit",
"11" => "Double if possible, otherwise hit",
"12" => "Hit",
"13" => "Stand",
"14" => "Stand",
"15" => "Stand",
"16" => "Stand",
"17" => "Stand",
"18" => "Stand",
"19" => "Stand",
"20" => "Stand",
"21" => "Stand",},
"3" =>
{"5" => "Hit",
"6" => "Hit",
"7" => "Hit",
"8" => "Hit",
"9" => "Double if possible, otherwise hit",
"10" => "Double if possible, otherwise hit",
"11" => "Double if possible, otherwise hit",
"12" => "Hit",
"13" => "Stand",
"14" => "Stand",
"15" => "Stand",
"16" => "Stand",
"17" => "Stand",
"18" => "Stand",
"19" => "Stand",
"20" => "Stand",
"21" => "Stand",},
"4" =>
{"5" => "Hit",
"6" => "Hit",
"7" => "Hit",
"8" => "Hit",
"9" => "Double if possible, otherwise hit",
"10" => "Double if possible, otherwise hit",
"11" => "Double if possible, otherwise hit",
"12" => "Stand",
"13" => "Stand",
"14" => "Stand",
"15" => "Stand",
"16" => "Stand",
"17" => "Stand",
"18" => "Stand",
"19" => "Stand",
"20" => "Stand",
"21" => "Stand"},
"5" =>
{"5" => "Hit",
"6" => "Hit",
"7" => "Hit",
"8" => "Double if possible, otherwise hit",
"9" => "Double if possible, otherwise hit",
"10" => "Double if possible, otherwise hit",
"11" => "Double if possible, otherwise hit",
"12" => "Stand",
"13" => "Stand",
"14" => "Stand",
"15" => "Stand",
"16" => "Stand",
"17" => "Stand",
"18" => "Stand",
"19" => "Stand",
"20" => "Stand",
"21" => "Stand"},
"6" =>
{"5" => "Hit",
"6" => "Hit",
"7" => "Hit",
"8" => "Double if possible, otherwise hit",
"9" => "Double if possible, otherwise hit",
"10" => "Double if possible, otherwise hit",
"11" => "Double if possible, otherwise hit",
"12" => "Stand",
"13" => "Stand",
"14" => "Stand",
"15" => "Stand",
"16" => "Stand",
"17" => "Stand",
"18" => "Stand",
"19" => "Stand",
"20" => "Stand",
"21" => "Stand"},
"7" =>
{"5" => "Hit",
"6" => "Hit",
"7" => "Hit",
"8" => "Hit",
"9" => "Hit",
"10" => "Double if possible, otherwise hit",
"11" => "Double if possible, otherwise hit",
"12" => "Hit",
"13" => "Hit",
"14" => "Hit",
"15" => "Hit",
"16" => "Hit",
"17" => "Stand",
"18" => "Stand",
"19" => "Stand",
"20" => "Stand",
"21" => "Stand"},
"8" =>
{"5" => "Hit",
"6" => "Hit",
"7" => "Hit",
"8" => "Hit",
"9" => "Hit",
"10" => "Double if possible, otherwise hit",
"11" => "Double if possible, otherwise hit",
"12" => "Hit",
"13" => "Hit",
"14" => "Hit",
"15" => "Hit",
"16" => "Hit",
"17" => "Stand",
"18" => "Stand",
"19" => "Stand",
"20" => "Stand",
"21" => "Stand"},
"9" =>
{"5" => "Hit",
"6" => "Hit",
"7" => "Hit",
"8" => "Hit",
"9" => "Hit",
"10" => "Double if possible, otherwise hit",
"11" => "Double if possible, otherwise hit",
"12" => "Hit",
"13" => "Hit",
"14" => "Hit",
"15" => "Hit",
"16" => "Hit",
"17" => "Stand",
"18" => "Stand",
"19" => "Stand",
"20" => "Stand",
"21" => "Stand"},
"10" =>
{"5" => "Hit",
"6" => "Hit",
"7" => "Hit",
"8" => "Hit",
"9" => "Hit",
"10" => "Hit",
"11" => "Double if possible, otherwise hit",
"12" => "Hit",
"13" => "Hit",
"14" => "Hit",
"15" => "Hit",
"16" => "Hit",
"17" => "Stand",
"18" => "Stand",
"19" => "Stand",
"20" => "Stand",
"21" => "Stand"},
"11" =>
{"5" => "Hit",
"6" => "Hit",
"7" => "Hit",
"8" => "Hit",
"9" => "Hit",
"10" => "Hit",
"11" => "Double if possible, otherwise hit",
"12" => "Hit",
"13" => "Hit",
"14" => "Hit",
"15" => "Hit",
"16" => "Hit",
"17" => "Stand",
"18" => "Stand",
"19" => "Stand",
"20" => "Stand",
"21" => "Stand"}}

dealersoft = {"2" =>
{"13" => "Hit",
"14" => "Hit",
"15" => "Hit",
"16" => "Hit",
"17" => "Double if possible, otherwise hit",
"18" => "Stand",
"19" => "Stand",
"20" => "Stand",
"21" => "Stand"},
"3" =>
{"13" => "Hit",
"14" => "Hit",
"15" => "Hit",
"16" => "Hit",
"17" => "Double if possible, otherwise hit",
"18" => "Double if possible, otherwise stand",
"19" => "Stand",
"20" => "Stand",
"21" => "Stand"},
"4" =>
{"12" => "Double if possible, otherwise hit",
"13" => "Double if possible, otherwise hit",
"14" => "Double if possible, otherwise hit",
"15" => "Double if possible, otherwise hit",
"16" => "Double if possible, otherwise hit",
"17" => "Double if possible, otherwise hit",
"18" => "Double if possible, otherwise stand",
"19" => "Stand",
"20" => "Stand",
"21" => "Stand"},
"5" =>
{"13" => "Double if possible, otherwise hit",
"14" => "Double if possible, otherwise hit",
"15" => "Double if possible, otherwise hit",
"16" => "Double if possible, otherwise hit",
"17" => "Double if possible, otherwise hit",
"18" => "Double if possible, otherwise stand",
"19" => "Stand",
"20" => "Stand",
"21" => "Stand"},
"6" =>
{"13" => "Double if possible, otherwise hit",
"14" => "Double if possible, otherwise hit",
"15" => "Double if possible, otherwise hit",
"16" => "Double if possible, otherwise hit",
"17" => "Double if possible, otherwise hit",
"18" => "Double if possible, otherwise stand",
"19" => "Double if possible, otherwise stand",
"20" => "Stand",
"21" => "Stand"},
"7" =>
{"13" => "Hit",
"14" => "Hit",
"15" => "Hit",
"16" => "Hit",
"17" => "Hit",
"18" => "Stand",
"19" => "Stand",
"20" => "Stand",
"21" => "Stand"},
"8" =>
{"13" => "Hit",
"14" => "Hit",
"15" => "Hit",
"16" => "Hit",
"17" => "Hit",
"18" => "Stand",
"19" => "Stand",
"20" => "Stand",
"21" => "Stand"},
"9" =>
{"13" => "Hit",
"14" => "Hit",
"15" => "Hit",
"16" => "Hit",
"17" => "Hit",
"18" => "Hit",
"19" => "Stand",
"20" => "Stand",
"21" => "Stand"},
"10" =>
{"13" => "Hit",
"14" => "Hit",
"15" => "Hit",
"16" => "Hit",
"17" => "Hit",
"18" => "Hit",
"19" => "Stand",
"20" => "Stand",
"21" => "Stand"},
"11" =>
{"13" => "Hit",
"14" => "Hit",
"15" => "Hit",
"16" => "Hit",
"17" => "Hit",
"18" => "Stand",
"19" => "Stand",
"20" => "Stand",
"21" => "Stand"}}

pair = {"2" =>
{"4" => "Split",
"6" => "Split",
"8" => "Hit",
"10" => "Double if possible, otherwise hit",
"12" => "Split",
"14" => "Split",
"16" => "Split",
"18" => "Split",
"20" => "Stand",
"22" => "Split"},
"3" =>
{"4" => "Split",
"6" => "Split",
"8" => "Hit",
"10" => "Double if possible, otherwise hit",
"12" => "Split",
"14" => "Split",
"16" => "Split",
"18" => "Split",
"20" => "Stand",
"22" => "Split"},
"4" =>
{"4" => "Split",
"6" => "Split",
"8" => "Split",
"10" => "Double if possible, otherwise hit",
"12" => "Split",
"14" => "Split",
"16" => "Split",
"18" => "Split",
"20" => "Stand",
"22" => "Split"},
"5" =>
{"4" => "Split",
"6" => "Split",
"8" => "Split",
"10" => "Double if possible, otherwise hit",
"12" => "Split",
"14" => "Split",
"16" => "Split",
"18" => "Split",
"20" => "Stand",
"22" => "Split"},
"6" =>
{"4" => "Split",
"6" => "Split",
"8" => "Split",
"10" => "Double if possible, otherwise hit",
"12" => "Split",
"14" => "Split",
"16" => "Split",
"18" => "Split",
"20" => "Stand",
"22" => "Split"},
"7" =>
{"4" => "Split",
"6" => "Split",
"8" => "Hit",
"10" => "Double if possible, otherwise hit",
"12" => "Split",
"14" => "Split",
"16" => "Split",
"18" => "Stand",
"20" => "Stand",
"22" => "Split"},
"8" =>
{"4" => "Hit",
"6" => "Split",
"8" => "Hit",
"10" => "Double if possible, otherwise hit",
"12" => "Hit",
"14" => "Split",
"16" => "Split",
"18" => "Split",
"20" => "Stand",
"22" => "Split"},
"9" =>
{"4" => "Hit",
"6" => "Hit",
"8" => "Hit",
"10" => "Double if possible, otherwise hit",
"12" => "Hit",
"14" => "Hit",
"16" => "Split",
"18" => "Split",
"20" => "Stand",
"22" => "Split"},
"10" =>
{"4" => "Hit",
"6" => "Hit",
"8" => "Hit",
"10" => "Hit",
"12" => "Hit",
"14" => "Stand",
"16" => "Split",
"18" => "Stand",
"20" => "Stand",
"22" => "Split"},
"11" =>
{"4" => "Split",
"6" => "Split",
"8" => "Hit",
"10" => "Double if possible, otherwise hit",
"12" => "Split",
"14" => "Split",
"16" => "Split",
"18" => "Split",
"20" => "Stand",
"22" => "Split"}}

#soft
if soft_token == true
  puts "Validate against SOFT table"
  puts "The move you should make is :"
  puts dealersoft["#{dealercard1}"]["#{total_cards}"]
end

#pair
if pair_token == true
  puts "Validate against PAIR table"
  puts "The move you should make is :"
  puts pair["#{dealercard1}"]["#{total_cards}"]
end

#hard
if pair_token == false && soft_token == false
  puts "Validate against HARD table"
  puts "The move you should make is :"
  puts dealerhard["#{dealercard1}"]["#{total_cards}"]
end
