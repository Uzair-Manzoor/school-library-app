require_relative 'person'

class Student < Person
  attr_accessor :classroom

 def initialize(age, classroom, name = "Unknown", parent_permission = true)  
    super(age, name, parent_permission)
    @classroom = classroom
  end
    super(id, age, name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end

student1 = Student.new(0o001, 15, 'AbdulAziz', parent_permission: false, classroom: 'Computer science')
student2 = Student.new(0o002, 17, 'AbdulSami', classroom: 'Applied physics')

puts student1.name # AbdulAziz
puts student1.classroom # Computer science
puts student1.can_use_services? # false

puts student2.age # 17
puts student2.classroom # Applied physics
puts student2.can_use_services? # true
