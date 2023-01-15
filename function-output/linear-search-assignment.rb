def linear_search(numbers, value)
  # 「入力値」が含まれている配列のindexを指定するi
  i = 0
  # この下に、iが配列の個数を超えるまで繰り返し処理をするコードを書く
  while i < numbers.length
  # もしも、iのindexから出される配列の値が、「入力値」と一致していたら
    if numbers[i] == value
      # そのインデックスの値をreturnする
      return i
    # そうでなければ
    else
      # 次の数字をチェックするためにiの数字を+1する
      i += 1
    end
  end
  # iが配列の個数を超えても入力値がなかったら、その配列の中に入力値がないということなので、Noneを返す
  "None"
end
# 「入力値」が含まれている配列
numbers = [1, 3, 5, 11, 12, 13, 17, 22, 25, 28]
target_number = gets.to_i
# 数字をlinear_searchメソッドで探し、探した結果をputsで出力する
puts(linear_search(numbers,target_number))