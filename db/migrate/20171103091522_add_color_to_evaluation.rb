class AddColorToEvaluation < ActiveRecord::Migration
  def change
    add_column :evaluations, :color, :string
  end
end
