def repeat_string(str)
  length = str.length
  if length<=4
     puts str * 3
  else
     shorten=str.slice(0..3)
     puts shorten * 3
  end
end

repeat_string('Python')
repeat_string('Go')
repeat_string('C++')
repeat_string('JavaScript')