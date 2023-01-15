def puts_hoge(number)
  number.each do |j|
    if j%3 == 0 || j.to_s.include?("3")
      puts "Hoge"
    else
      puts "#{j}"
    end
  end
end

  puts_hoge(1..40)