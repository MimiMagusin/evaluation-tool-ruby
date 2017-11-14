class RandomStudent < ActiveRecord::Base
  def student_colors
    red = []
    yellow = []
    green = []

    Student.all.each |student|
      if student.evaluations.last.color = "red"
        red.push(student)
      elsif student.evaluations.last.color = "yellow"
        yellow.push(student)
      else
        green.push(student)
      end
    end

    return pick_a_color(red, yellow, green)
  end

  def pick_a_color(red, yellow, green)
    random_number = rand(100)

    if random_number < 51
      red.
    elsif random_number < 84
      Student.all.each |student|
        selected_students = student.evaluations.last.color.find_by(color: "yellow")
      end
    else
      Student.all.each |student|
       selected_students = student.evaluations.last.color.find_by(color: "green")
      end
    end

    pick_a_student(students)
  end

  def pick_a_student(students)
    st
  end


end
