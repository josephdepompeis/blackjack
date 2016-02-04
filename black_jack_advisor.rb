
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
{"5" => "H",
"6" => "H",
"7" => "H",
"8" => "H",
"9" => "DH",
"10" => "DH",
"11" => "DH",
"12" => "H",
"13" => "S",
"14" => "S",
"15" => "S",
"16" => "S",
"17" => "S",
"18" => "S",
"19" => "S",
"20" => "S",
"21" => "S",},
"3" =>
{"5" => "H",
"6" => "H",
"7" => "H",
"8" => "H",
"9" => "DH",
"10" => "DH",
"11" => "DH",
"12" => "H",
"13" => "S",
"14" => "S",
"15" => "S",
"16" => "S",
"17" => "S",
"18" => "S",
"19" => "S",
"20" => "S",
"21" => "S",},
"4" =>
{"5" => "H",
"6" => "H",
"7" => "H",
"8" => "H",
"9" => "DH",
"10" => "DH",
"11" => "DH",
"12" => "S",
"13" => "S",
"14" => "S",
"15" => "S",
"16" => "S",
"17" => "S",
"18" => "S",
"19" => "S",
"20" => "S",
"21" => "S"},
"5" =>
{"5" => "H",
"6" => "H",
"7" => "H",
"8" => "DH",
"9" => "DH",
"10" => "DH",
"11" => "DH",
"12" => "S",
"13" => "S",
"14" => "S",
"15" => "S",
"16" => "S",
"17" => "S",
"18" => "S",
"19" => "S",
"20" => "S",
"21" => "S"},
"6" =>
{"5" => "H",
"6" => "H",
"7" => "H",
"8" => "DH",
"9" => "DH",
"10" => "DH",
"11" => "DH",
"12" => "S",
"13" => "S",
"14" => "S",
"15" => "S",
"16" => "S",
"17" => "S",
"18" => "S",
"19" => "S",
"20" => "S",
"21" => "S"},
"7" =>
{"5" => "H",
"6" => "H",
"7" => "H",
"8" => "H",
"9" => "H",
"10" => "DH",
"11" => "DH",
"12" => "H",
"13" => "H",
"14" => "H",
"15" => "H",
"16" => "H",
"17" => "S",
"18" => "S",
"19" => "S",
"20" => "S",
"21" => "S"},
"8" =>
{"5" => "H",
"6" => "H",
"7" => "H",
"8" => "H",
"9" => "H",
"10" => "DH",
"11" => "DH",
"12" => "H",
"13" => "H",
"14" => "H",
"15" => "H",
"16" => "H",
"17" => "S",
"18" => "S",
"19" => "S",
"20" => "S",
"21" => "S"},
"9" =>
{"5" => "H",
"6" => "H",
"7" => "H",
"8" => "H",
"9" => "H",
"10" => "DH",
"11" => "DH",
"12" => "H",
"13" => "H",
"14" => "H",
"15" => "H",
"16" => "H",
"17" => "S",
"18" => "S",
"19" => "S",
"20" => "S",
"21" => "S"},
"10" =>
{"5" => "H",
"6" => "H",
"7" => "H",
"8" => "H",
"9" => "H",
"10" => "H",
"11" => "DH",
"12" => "H",
"13" => "H",
"14" => "H",
"15" => "H",
"16" => "H",
"17" => "S",
"18" => "S",
"19" => "S",
"20" => "S",
"21" => "S"},
"11" =>
{"5" => "H",
"6" => "H",
"7" => "H",
"8" => "H",
"9" => "H",
"10" => "H",
"11" => "DH",
"12" => "H",
"13" => "H",
"14" => "H",
"15" => "H",
"16" => "H",
"17" => "S",
"18" => "S",
"19" => "S",
"20" => "S",
"21" => "S"}}

dealersoft = {"2" =>
{"13" => "H",
"14" => "H",
"15" => "H",
"16" => "H",
"17" => "DH",
"18" => "S",
"19" => "S",
"20" => "S",
"21" => "S"},
"3" =>
{"13" => "H",
"14" => "H",
"15" => "H",
"16" => "H",
"17" => "DH",
"18" => "DS",
"19" => "S",
"20" => "S",
"21" => "S"},
"4" =>
{"12" => "DH",
"13" => "DH",
"14" => "DH",
"15" => "DH",
"16" => "DH",
"17" => "DH",
"18" => "DS",
"19" => "S",
"20" => "S",
"21" => "S"},
"5" =>
{"13" => "DH",
"14" => "DH",
"15" => "DH",
"16" => "DH",
"17" => "DH",
"18" => "DS",
"19" => "S",
"20" => "S",
"21" => "S"},
"6" =>
{"13" => "DH",
"14" => "DH",
"15" => "DH",
"16" => "DH",
"17" => "DH",
"18" => "DS",
"19" => "DS",
"20" => "S",
"21" => "S"},
"7" =>
{"13" => "H",
"14" => "H",
"15" => "H",
"16" => "H",
"17" => "H",
"18" => "S",
"19" => "S",
"20" => "S",
"21" => "S"},
"8" =>
{"13" => "H",
"14" => "H",
"15" => "H",
"16" => "H",
"17" => "H",
"18" => "S",
"19" => "S",
"20" => "S",
"21" => "S"},
"9" =>
{"13" => "H",
"14" => "H",
"15" => "H",
"16" => "H",
"17" => "H",
"18" => "H",
"19" => "S",
"20" => "S",
"21" => "S"},
"10" =>
{"13" => "H",
"14" => "H",
"15" => "H",
"16" => "H",
"17" => "H",
"18" => "H",
"19" => "S",
"20" => "S",
"21" => "S"},
"11" =>
{"13" => "H",
"14" => "H",
"15" => "H",
"16" => "H",
"17" => "H",
"18" => "S",
"19" => "S",
"20" => "S",
"21" => "S"}}

pair = {"2" =>
{"4" => "P",
"6" => "P",
"8" => "H",
"10" => "DH",
"12" => "P",
"14" => "P",
"16" => "P",
"18" => "P",
"20" => "S",
"22" => "P"},
"3" =>
{"4" => "P",
"6" => "P",
"8" => "H",
"10" => "DH",
"12" => "P",
"14" => "P",
"16" => "P",
"18" => "P",
"20" => "S",
"22" => "P"},
"4" =>
{"4" => "P",
"6" => "P",
"8" => "P",
"10" => "DH",
"12" => "P",
"14" => "P",
"16" => "P",
"18" => "P",
"20" => "S",
"22" => "P"},
"5" =>
{"4" => "P",
"6" => "P",
"8" => "P",
"10" => "DH",
"12" => "P",
"14" => "P",
"16" => "P",
"18" => "P",
"20" => "S",
"22" => "P"},
"6" =>
{"4" => "P",
"6" => "P",
"8" => "P",
"10" => "DH",
"12" => "P",
"14" => "P",
"16" => "P",
"18" => "P",
"20" => "S",
"22" => "P"},
"7" =>
{"4" => "P",
"6" => "P",
"8" => "H",
"10" => "DH",
"12" => "P",
"14" => "P",
"16" => "P",
"18" => "S",
"20" => "S",
"22" => "P"},
"8" =>
{"4" => "H",
"6" => "P",
"8" => "H",
"10" => "DH",
"12" => "H",
"14" => "P",
"16" => "P",
"18" => "P",
"20" => "S",
"22" => "P"},
"9" =>
{"4" => "H",
"6" => "H",
"8" => "H",
"10" => "DH",
"12" => "H",
"14" => "H",
"16" => "P",
"18" => "P",
"20" => "S",
"22" => "P"},
"10" =>
{"4" => "H",
"6" => "H",
"8" => "H",
"10" => "H",
"12" => "H",
"14" => "S",
"16" => "P",
"18" => "s",
"20" => "S",
"22" => "P"},
"11" =>
{"4" => "P",
"6" => "P",
"8" => "H",
"10" => "DH",
"12" => "P",
"14" => "P",
"16" => "P",
"18" => "P",
"20" => "S",
"22" => "P"}}

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
