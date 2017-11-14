class Student < ActiveRecord::Base
  belongs_to :batch
  has_many :evaluations

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.order_by_last_name
    order(:last_name)
  end

  def last_evaluation
    last_evaluation = evaluations.last.color
  end

end
