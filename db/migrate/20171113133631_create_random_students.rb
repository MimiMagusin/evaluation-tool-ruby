class CreateRandomStudents < ActiveRecord::Migration
  def change
    create_table :random_students do |t|

      t.timestamps null: false
    end
  end
end
