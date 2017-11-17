class AddBatchToRandomStudents < ActiveRecord::Migration
  def change
    add_reference :random_students, :batch, index: true, foreign_key: true
  end
end
