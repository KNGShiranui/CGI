def puts_oraora(number)
  j = number
  if j%3 == 0 
  puts "「ひ、ひと思いに…右で…やってくれ」"
  puts "アトゥム神：NO! NO! NO! NO! NO!"
  elsif j.to_s.include?("3")
  puts "「ひ…左?」"
  puts "アトゥム神：NO! NO! NO! NO! NO!"
  else
  puts "「り…りょうほーですかあああ～」"
  puts "アトゥム神：YES! YES! YES! YES!…YES!"      
  end
end

puts "承太郎「右の拳で殴るか？左の拳で殴るか？あててみな」"
puts"　左（→3の倍数）"
puts"　右（→3がつく数）"
puts"　両方（→上記以外の数）"

number = gets.chomp
puts_oraora(number)