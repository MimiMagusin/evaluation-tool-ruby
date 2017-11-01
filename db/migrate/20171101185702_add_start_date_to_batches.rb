class AddStartDateToBatches < ActiveRecord::Migration
  def change
    add_column :batches, :start_date, :date
  end
end
