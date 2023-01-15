def janken
  puts "[0]:グー\n[1]:チョキ\n[2]:パー"
  player_hand = gets.to_i

  program_hand = rand(3)

  jankens = ["グー", "チョキ", "パー"]

  puts "あなたの手:#{jankens[player_hand]}, わたしの手:#{jankens[program_hand]}"

  if player_hand == program_hand
    puts "あいこで"
    # 返り値を返す
    janken = true
  elsif player_hand - program_hand == -1 || player_hand - program_hand == 2
    puts "あなたの勝ちです"
    janken = false
  else
    puts "あなたの負けです"
    janken = false
  end
end

  next_game = true

  puts "最初はグー、じゃんけん..."

  # じゃんけんを繰り返す
  while next_game do
    next_game = janken
  end 