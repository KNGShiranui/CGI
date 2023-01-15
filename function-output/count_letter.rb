def count_letter(str)
  count = 0
  str.split("").each do 
    count +=1
  end
  count
end

p count_letter("abcde")