class RandomStudent < ActiveRecord::Base
  def student_colors
    red_students = []
    yellow_students = []
    green_students = []

    Student.all.each |student|
      if student.evaluations.last.color = "red"
        red_students.push(student)
      elsif student.evaluations.last.color = "yellow"
        yellow_students.push(student)
      else
        green_students.push(student)
      end
    end

    return pick_a_color
  end

  def pick_a_color
    random_number = rand(100)

    if random_number < 51
      Student.all.each |student|
        selected_students.push(student.evaluations.last.color.find_by(color: "red")
      end
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
