class Student < ActiveRecord::Base
  def full_name
    "#{first_name} #{last_name}"
  end

  def self.order_by_last_name
    order(:current_last_name)
  end
end