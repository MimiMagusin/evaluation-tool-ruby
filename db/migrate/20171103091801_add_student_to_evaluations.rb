class AddStudentToEvaluations < ActiveRecord::Migration
  def change
    add_reference :evaluations, :student, index: true, foreign_key: true
  end
end
