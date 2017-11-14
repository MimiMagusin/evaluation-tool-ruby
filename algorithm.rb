s1 = { name: "Joep", evaluations: [{ comment: "yey", color: "red" }, { comment: "yey", color: "yellow" }, { comment: "yey", color: "green" }]}
s2 = { name: "Japie", evaluations: [{ comment: "yey", color: "red" }, { comment: "yey", color: "yellow" }]}
s3 = { name: "Mientje", evaluations: [{ comment: "yey", color: "red" }] }
s4 = { name: "Thimothy", evaluations: [{ comment: "yey", color: "green" }, { comment: "yey", color: "yellow" }, { comment: "yey", color: "green" }]}
s5 = { name: "Joop", evaluations: [{ comment: "yey", color: "red" }, { comment: "yey", color: "yellow" }, { comment: "yey", color: "red" }]}
s6 = { name: "Jannie", evaluations: [{ comment: "yey", color: "red" }, { comment: "yey", color: "yellow" }, { comment: "yey", color: "green" }]}
s7 = { name: "Eva", evaluations: [{ comment: "yey", color: "yellow" }]}
s8 = { name: "Tobias", evaluations: []}

students = [s1, s2, s3, s4, s5, s6, s7, s8]



  def colored_students(students)

    red = []
    yellow = []
    green = []

    students.each do |student|
      if student[:evaluations].length < 1
        red.push(student)
      elsif student[:evaluations].last[:color] == "green"
        green.push(student)
      elsif student[:evaluations].last[:color] == "yellow"
        yellow.push(student)
      else
        red.push(student)
      end
    end
    puts "red_array: #{red}"
    puts "green_array: #{green}"
    puts "yellow_array: #{yellow}"
    puts "********************"
    pick_a_student(red, green, yellow)
  end

  def pick_a_student(red, green, yellow)
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
    puts "random_student: #{@random_student}"
    puts "**********"
  end

    #tests
    puts s1
    puts s1[:name]
    puts s1[:evaluations]
    puts s1[:evaluations].last[:color]
    puts "********************"
    colored_students(students)

    def hundred_students_asked(students)
      all_students_asked = []
      100.times do
        colored_students(students)
        all_students_asked.push(@random_student)
      end
      puts "********************"
      puts "all_students_asked: #{all_students_asked}"
      students_by_color(all_students_asked)
    end

    def students_by_color(all_students_asked)
      test_red = []
      test_yellow = []
      test_green = []

      all_students_asked.each do |student|
        if student[:evaluations].length < 1
          test_red.push(student)
        elsif student[:evaluations].last[:color] == "green"
          test_green.push(student)
        elsif student[:evaluations].last[:color] == "yellow"
          test_yellow.push(student)
        else
          test_red.push(student)
        end
      end
      percentage(test_red, test_yellow, test_green)
    end

    def percentage(test_red, test_yellow, test_green)
      red_percentage = test_red.length
      yellow_percentage = test_yellow.length
      green_percentage = test_green.length
       puts"****************"
       puts "red: #{red_percentage}%"
       puts "yellow: #{yellow_percentage}%"
       puts "green: #{green_percentage}%"
    end


    hundred_students_asked(students)
