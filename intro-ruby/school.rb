#2
#attr_accessorとinitializeを使った場合。
#この場合、A学校、B学校それぞれについて出力のためにputsメソッド実行は必要だが、各メソッド（.nameとか）は入力不要なので入力を簡略化できる。
#インスタンス作成メソッド（.new）実行の際に変数をまとめて代入すること。

class School
  attr_accessor :name,
                :address,
                :number_of_students,
                :founding_years,
                :introduction_video_url,
                :introduction_statement

  def initialize(name,
                 address,
                 number_of_students,
                 founding_years,
                 introduction_video_url,
                 introduction_statement)

    @name = name
    @address = address
    @number_of_students = number_of_students
    @founding_years = founding_years
    @introduction_video_url = introduction_video_url
    @introduction_statement = introduction_statement
  end
  
  def sample_instance_method
    puts "sampleだよ！"     #test4.rb から追加した部分
  end
end

a_school = School.new("A学校", "渋谷区..", 300, 100, "https://～", "A学校は自然豊かな...")
puts a_school.name
puts a_school.address
puts a_school.number_of_students
puts a_school.founding_years
puts a_school.introduction_video_url
puts a_school.introduction_statement

a_school.sample_instance_method   #test4.rb から追加した部分。
                                  #メソッド内でputsを実行しているから上記のようなputsメソッドが不要。
                                  #インスタンス@変数の部分でputsするか、インスタンス作成の段階でする今回のパターンにするかは正直設計の都合次第で便利な方を選べばいいと思う。

b_school = School.new("B学校", "新宿区..", 100, 200, "https://～", "B学校は都心にあり...")
puts a_school.name
puts a_school.address
puts a_school.number_of_students
puts a_school.founding_years
puts a_school.introduction_video_url
puts a_school.introduction_statement