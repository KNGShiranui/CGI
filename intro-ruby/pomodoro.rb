require 'launchy'

# 24分間　集中用の音楽を聞く
Launchy.open("https://www.youtube.com/watch?v=sem3UU-EQJs")
# 60 × 24 秒ここで処理を停止する
sleep(60 * 24)
# 24分後休憩用のサイトを聞く
Launchy.open("https://diveintocode.jp/")