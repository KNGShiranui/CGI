#1     ※attr_accessor確認用
class School
  attr_accessor :name, :address
end

school = School.new       #インスタンス作成
school.name = "A学校"     #.name=メソッド実行
puts school.name          #nameメソッドを実行し、putで出力
school.address = "渋谷区" #.address=メソッド実行
puts school.address       #addressメソッドを実行し、putで出力