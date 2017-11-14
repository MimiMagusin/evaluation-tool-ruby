class RandomStudentsController < ApplicationController

  def new
    @student = RandomStudent.colored_students(Student.all)
  end

end
