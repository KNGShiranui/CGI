require 'io/console'
# プレイヤー(自分)に「0~2」を入力させるロジックを書きます。

class Introduction
  def self.intro
    puts"ねぇちょっと！お兄さん僕とジャンケンしてくれない？"
    puts"------------------------------------------"
    puts "[0]:ああやるよ。やればいいんだろ？\n[1]:何だこいつ？どこの駅にも一人ぐらい妙な奴がいるよな"
    puts"------------------------------------------"
    input_hand = STDIN.noecho(&:gets).chomp
    
    dive = 2
    while true && dive<5
      if ["0"].include?(input_hand)                        #if～elsif「input_hand」が「0, 1, 2」のいずれかの場合だった場合
        return false                            #ヒント：戻り値を返して繰り返し処理を終了させたい場合、「return」を使用します。たぶん省略可能。
      elsif ["1"].include?(input_hand)                        #if～elsif「input_hand」が「0, 1, 2」のいずれかの場合だった場合
        true
        puts "ジャンケンがしたいんだよ...ねッ？　してくれてもいいじゃあない〜。ねェ〜"
        puts "[0]:ああやるよ。やればいいんだろ？\n[1]:なんなんだおまえはあ～～～～～ッ！？ついてくるなあっち行けッ！"
        input_hand = STDIN.noecho(&:gets).chomp
      else                                      #else それ以外の場合  
        puts "グーだァ！！（グーパンチ）ふざけてんじゃあないぞ！！"
        return false
      end
      if dive < 5
        puts "いい加減にしろ。#{dive}回目だぞ！"
        puts"------------------------------------------"
      end
      dive +=1
    end

    puts "ジャンケンがしたいんだよ...ねッ？　してくれてもいいじゃあない〜。ねェ〜"
    puts "[0]:ああやるよ。やればいいんだろ？\n[1]:グーだァ！！（グーパンチ）ふざけてんじゃあないぞ！！"
    puts"------------------------------------------"
    input_hand = STDIN.noecho(&:gets).chomp
    if ["0"].include?(input_hand)                        #if～elsif「input_hand」が「0, 1, 2」のいずれかの場合だった場合
      puts "ああやるよ。やればいいんだろ？"
      puts"------------------------------------------"
      return false                            #ヒント：戻り値を返して繰り返し処理を終了させたい場合、「return」を使用します。たぶん省略可能。
    elsif ["1"].include?(input_hand)                        #if～elsif「input_hand」が「0, 1, 2」のいずれかの場合だった場合
      puts "グーだァ！！（グーパンチ）ふざけてんじゃあないぞ！！"
      puts"------------------------------------------"
      return false
    end
  end
end

class Player
  def hand
    puts "数字を入力してください。"
    puts "[0]:グー\n[1]:チョキ\n[2]:パー"
    input_hand = STDIN.noecho(&:gets).chomp
    while true                                  #「input_hand」が「0, 1, 2」のいずれかだと繰り返し処理を終了し、それ以外（アルファベットも含む）だと繰り返し処理を継続する。
      if ["0","1","2"].include?(input_hand)                        #if～elsif「input_hand」が「0, 1, 2」のいずれかの場合だった場合
        return input_hand.to_i                            #ヒント：戻り値を返して繰り返し処理を終了させたい場合、「return」を使用します。たぶん省略可能。
      else                                      #else それ以外の場合
        puts "お前の頭はハッピーセットかよ。"
        puts "0〜2の中から選べっつってんだ。半角だぞ。"
        puts "[0]:グー\n[1]:チョキ\n[2]:パー"
        input_hand = STDIN.noecho(&:gets).chomp
      end                                       # end if文のend
    end
  end
end   

class Enemy                     # 相手が「1~3」の値をランダムに生成するロジックを書きます。
  def hand
    return rand(0..2)    # グー、チョキ、パーの値をランダムに取得する。 
  end                                      
end

class Janken                     # プレイヤー(自分)が入力した「0~2」と、敵がランダムで生成した「0~2」をじゃんけんをさせて、その結果をコンソール上に出力するロジックを書きます。
  def pon(player_hand, enemy_hand)
    janken = ["グー", "チョキ", "パー"]
    puts "あなたの手は#{janken[player_hand]}です。"
    puts "相手の手は#{janken[enemy_hand]}です。"      #なぜかいつもグーになる。おそらく数として認識されず文字として認識されているのだとはおもうが・・・なぜ？
                                                     #あと、なぜ@を使ったPlayerクラスのインスタンス変数がEnemyクラスやJankenクラスにも使えているのか・・・？
    if player_hand ==0 && enemy_hand == 0             # Playerクラスの戻り値(player_hand)とEnemyクラスの戻り値(enemy_hand)の値が同じだった場合
      puts "あいこ：悪運のグーではないらしいな"                              #「あいこ」を出力します。
      true                                      #「true」を返してじゃんけんを繰り返し実行させます。ヒント：「return」を使って戻り値を返すことができます。しかし、Rubyでは戻り値を返す場合、「return」を省略するのが一般的。
    elsif player_hand -enemy_hand == 0
      puts "あいこだッ！！！"
    elsif (player_hand + 3 - enemy_hand)%3 ==2  #もしくは (player_hand == 0 && enemy_hand == 1) || (player_hand == 1 && enemy_hand == 2) || (player_hand == 2 && enemy_hand == 0)
      puts "勝ち：強運はさっきジョセフ・ジョースターと共に、この岸辺露伴の所にやってきたんだよ。"            
      false                                     #「false」を返してじゃんけんを終了させます。
    else
      puts "負け：猿（モンキー）が人間に追いつけるかーッ おまえはこのディオにとっての モンキーなんだよ ジョジョォォォォ－－－－－ッ！！"                    #「あなたの負けです」を出力します。
      false                                     #「false」を返してじゃんけんを終了させます。
    end
    puts "-----------------------------"
  end
end


class GameStart                   # じゃんけんゲームを実行するロジックを書く。
  def self.jankenpon              # selfを使用すると、GameStartをインスタンス化することなく、クラス名を使ってjankenponメソッドを呼び出せる。
    Introduction.intro
    player = Player.new # 変数「player」にPlayerをインスタンス化したものを代入します。
    enemy = Enemy.new    # 変数「enemy」にEnemyをインスタンス化したものを代入します。
    janken = Janken.new    # 変数「janken」にJankenをインスタンス化したものを代入します。
                                    #なぜ、Player.handやJanken.resultを実行しなくてもきちんと実行されるのか
    next_game = true

    while true
      next_game = janken.pon(player.hand, enemy.hand)
    end
  end
end

gamestart = GameStart.jankenpon