#1
class School
  attr_accessor :name
end

school = School.new
school.name = "A学校"
puts school.name


#2
class School
  # name=というインスタンスメソッドを定義する
  def name=(value)
    @name = value
  end

  def name
    #　インスタンス変数のため、メソッド間で使用できる
    @name
  end
end

school = School.new
school.name = "A学校"
puts school.name

#1と#2は同じ内容を示す