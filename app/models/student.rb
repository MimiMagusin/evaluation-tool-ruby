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

  def random_number
    random_number = rand(100)
  end

  def self.pick_a_color
    number = random_numbe
    if random_number < 51
      last_evaluation.find_by(color: "red")
    elsif random_number < 84
      last_evaluation.find_by(color: "yellow")
    else
      last_evaluation.find_by(color: "green")
    end
  end


end
