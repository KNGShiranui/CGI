def introduce(name,age)
    puts "私の名前は#{name}です。年齢は#{age}歳です。"
end

puts "名前を入力"
name = gets.chomp

puts "年齢を入力"
age = gets.to_i

introduce(name,age)