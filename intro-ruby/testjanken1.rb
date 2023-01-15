# プレイヤー(自分)に「0~2」を入力させるロジックを書きます。
class Player
  def hand
    while true
      puts "数字を入力してください。"
      puts "0:グー\n, 1:チョキ\n, 2:パー"
      input_hand =gets.to_i
    
      if input_hand == 0
        puts "0:グー"
      elsif input_hand == 1
        puts "1:チョキ"
      elsif input_hand == 2
        puts "2:パー"
      else
        puts "0〜2の数字を入力してください。"
        puts "0:グー\n, 1:チョキ\n, 2:パー"
      end
    end
  end
end

puts "最初はグー、じゃんけん・・・"
player=Player.new

