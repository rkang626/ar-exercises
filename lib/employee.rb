class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
  validates_associated :store

  after_create :give_employee_a_password

  private
    def give_employee_a_password
      self.password = ("a".."z").to_a.shuffle[0,8].join
      self.save
    end
end
