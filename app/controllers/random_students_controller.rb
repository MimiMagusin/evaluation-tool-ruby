class RandomStudentsController < ApplicationController

  def new
    random_student = RandomStudent.new
    @student = random_student.colored_students(Student.all)
    puts 'YOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO'
    puts @student
  end

end
