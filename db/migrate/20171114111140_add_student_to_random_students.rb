class AddStudentToRandomStudents < ActiveRecord::Migration
  def change
    add_reference :random_students, :student, index: true, foreign_key: true
  end
end
