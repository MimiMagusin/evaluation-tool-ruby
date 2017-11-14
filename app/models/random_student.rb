class RandomStudent < ActiveRecord::Base
  belongs_to :student

  def self.colored_students(students)
    red = []
    yellow = []
    green = []
    students.each do |student|
      if student.evaluations.length < 1
        red.push(student)
      elsif student.evaluations.last[:color] == "green"
        green.push(student)
      elsif student.evaluations.last[:color] == "yellow"
        yellow.push(student)
      else
        red.push(student)
      end
    end
    self.pick_a_student(red, green, yellow)
  end

  def self.pick_a_student(red, green, yellow)
    random_number = rand(100)
    if random_number < 51 && red.length > 0
      @random_student = red[rand(red.length - 1)]
    elsif random_number < 84 && yellow.length > 0
      @random_student = yellow[rand(yellow.length - 1)]
    elsif random_number > 83 && green.length > 0
      @random_student = green[rand(green.length - 1)]
    else
      random_number = rand(100)
    end
  end
end
