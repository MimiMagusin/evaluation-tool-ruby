class AddEndDateToBatches < ActiveRecord::Migration
  def change
    add_column :batches, :end_date, :date
  end
end
