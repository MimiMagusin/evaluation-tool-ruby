class Student < ActiveRecord::Base
  def self.order_by_last_name
    order(:current_last_name)
  end
end
