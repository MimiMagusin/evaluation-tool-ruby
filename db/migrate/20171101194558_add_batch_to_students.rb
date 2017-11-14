class AddBatchToStudents < ActiveRecord::Migration
  def change
    add_reference :students, :batch, index: true, foreign_key: true
  end
end
