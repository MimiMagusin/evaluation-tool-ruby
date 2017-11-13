s1 = { name: "Joep", evaluations: [{ comment: "yey", color: "red" }, { comment: "yey", color: "yellow" }, { comment: "yey", color: "green" }]}
s2 = { name: "Japie", evaluations: [{ comment: "yey", color: "red" }, { comment: "yey", color: "yellow" }]}
s3 = { name: "Mientje", evaluations: [{ comment: "yey", color: "red" }] }
s4 = { name: "Thimothy", evaluations: [{ comment: "yey", color: "green" }, { comment: "yey", color: "yellow" }, { comment: "yey", color: "green" }]}
s5 = { name: "Joop", evaluations: [{ comment: "yey", color: "red" }, { comment: "yey", color: "yellow" }, { comment: "yey", color: "red" }]}
s6 = { name: "Jannie", evaluations: [{ comment: "yey", color: "red" }, { comment: "yey", color: "yellow" }, { comment: "yey", color: "green" }]}
s7 = { name: "Eva", evaluations: [{ comment: "yey", color: "yellow" }]}
s8 = { name: "Tobias", evaluations: []}

students = [s1, s2, s3, s4, s5, s6, s7, s8]
red = []
yellow = []
green = []
random_number = rand(100)

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

    if random_number < 51
      random_student = red[rand(red.length - 1)]
    elsif random_number < 84
      random_student = yellow[rand(yellow.length - 1)]
    else
      random_student = green[rand(green.length - 1)]
    end


    #tests
    puts s1
    puts s1[:name]
    puts"********************"
    puts s1[:evaluations]
    puts "********************"
    puts s1[:evaluations].last[:color]
    puts "********************"

    puts "********************"
    puts "red: #{red}"
    puts "********************"
    puts "yellow: #{yellow}"
    puts "********************"
    puts "green: #{green}"
    puts "********************"
    puts "********************"
    puts "********************"
    puts "random_student: #{random_student}"
