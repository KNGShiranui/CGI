name = "山田太郎"
age = "18"
puts "私の名前は#{name}です。年齢は#{age}歳です"

season = ["春","夏","秋"]
season <<"冬"
p season[2]

house = {price:"2000万円",location:"東京都",size:"100坪"}
p house[:location]



house = [{price:"2000万",location: "東京都",size:"80坪"},{price:"1500万",location:"千葉県",size:"50坪"},{price:"800万",location:"埼玉県",size:"100坪"}]
p house [0][:size]
p house [2][:price]
p house [2][:size]

num = 30

if num == 30
  puts "30ジャストだよ"
elsif num < 50
  puts"50未満だよ"
else
  puts"50以上だよ"
end

num = 30

if num%2 == 0
  puts "#{num}は偶数"
else
  puts "#{num}は奇数"
end


num = 0
while num < 10
    puts "おはようございます"
    num +=1
end

for number in 1..10 do
  puts"こんにちは"
end

10.times do
  puts "こんばんは"
end

num = [1,2,3,4,5,6,7,8,9,10]
num.each do |n|
  puts n
end


def addition(x,y,z)
  (x+y+z)/3
end
puts addition(2,3,7)

def division(x,y)
  x/y
end
puts division(10,5)

def division(x, y)
  if y == 0
    return "エラーです。"
  elsif y != 0
    return x/y
  end
end
puts division(6, 2)

def division(x, y)
  if y == 0
    return "エラーです。"
  end
   x / y
end

puts division(6, 2)

def doing(date,place,food)
  "#{date}は#{place}で#{food}を食べる"
end

puts doing("今日","渋谷","カレー")
puts doing("明日","池袋","オムライス")