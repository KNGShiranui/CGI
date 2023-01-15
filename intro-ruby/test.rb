require 'io/console'

def add(n,y)
  n + y
  return n + y
  end
  
  n=  STDIN.noecho(&:gets).to_i #nの値を出力しないためのコード
  y =  STDIN.noecho(&:gets).to_i #yの値を出力しないためのコード

  puts add(n,y)

  