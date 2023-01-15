def bubble_sort(numbers)
  # 配列の数だけ、ソートを繰り返す
  # iは「配列のインデックス番号」
  for i in 0..((numbers.length)-1)
    # 配列の移動を目で確認するためのp(number)
    p(numbers)
    # まだ調べていない配列の中身を、左から順にすべてチェックする
    # jは「今回の探索でまだ調べていない配列の数字」
    for j in 1.. ((numbers.length)-i-1)
      # 左と右の数字を比べて、左のほうが大きかったら
      if numbers[j-1] > numbers[j]
        # 左と右を交換する
        numbers[j-1],numbers[j] = numbers[j],numbers[j-1]
      end
    end
  end
end

bubble_sort([100,50,25,4,1])