#1
#attr_accessorのみ使った場合。この場合、A学校、B学校それぞれについて各メソッド実行及びputsメソッド実行が必要なのでめんどくさい・・・

class School
  attr_accessor :name,
                :address,
                :number_of_students,
                :founding_years,
                :introduction_video_url,
                :introduction_statement
end

a_school = School.new                                         #インスタンス作成
a_school.name = "A学校"                                       #name=メソッド実行
a_school.address = "渋谷区"                                   #address=メソッド実行
a_school.number_of_students = "300"                            #a_school.number_of_student=メソッド実行
a_school.founding_years = "100"                               #founding_years=メソッド実行
a_school.introduction_video_url = "https://～"                #introduction_video_url=メソッド実行
a_school.introduction_statement = "A学校は自然豊かな..."       #introduction_statement=メソッド実行
puts a_school.name                         #nameメソッド実行したのちputsで出力
puts a_school.address                      #addressメソッド実行したのちputsで出力
puts a_school.number_of_students            #a_school.number_of_studentメソッド実行したのちputsで出力
puts a_school.founding_years               #founding_yearsメソッド実行したのちputsで出力
puts a_school.introduction_video_url       #introduction_video_urlメソッド実行したのちputsで出力
puts a_school.introduction_statement       #introduction_statementメソッド実行したのちputsで出力

b_school = School.new                                         #インスタンス作成
b_school.name = "B学校"                                       #name=メソッド実行
b_school.address = "新宿区"                                   #address=メソッド実行
b_school.number_of_students = "100"                            #a_school.number_of_student=メソッド実行
b_school.founding_years = "200"                               #founding_years=メソッド実行
b_school.introduction_video_url = "https://～"                #introduction_video_url=メソッド実行
b_school.introduction_statement = "B学校は都心にあり..."       #introduction_statement=メソッド実行
puts b_school.name                         #nameメソッド実行したのちputsで出力
puts b_school.address                      #addressメソッド実行したのちputsで出力
puts b_school.number_of_students            #a_school.number_of_studentメソッド実行したのちputsで出力
puts b_school.founding_years               #founding_yearsメソッド実行したのちputsで出力
puts b_school.introduction_video_url       #introduction_video_urlメソッド実行したのちputsで出力
puts b_school.introduction_statement       #introduction_statementメソッド実行したのちputsで出力












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
end

a_school = School.new("A学校", "渋谷区..", 300, 100, "https://～", "A学校は自然豊かな...")
puts a_school.name
puts a_school.address
puts a_school.number_of_students
puts a_school.founding_years
puts a_school.introduction_video_url
puts a_school.introduction_statement

b_school = School.new("B学校", "新宿区..", 100, 200, "https://～", "B学校は都心にあり...")
puts a_school.name
puts a_school.address
puts a_school.number_of_students
puts a_school.founding_years
puts a_school.introduction_video_url
puts a_school.introduction_statement