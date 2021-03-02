class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validate :carries_apparel

  before_destroy :check_for_employees

  def carries_apparel
    if mens_apparel != true && womens_apparel != true
      errors.add(:base, "Store must carry mens or womens apparel")
    end
  end

  private

    def check_for_employees
      employees = Employee.where(store_id: self.id)
      if employees.any?
        errors.add(:base, "Can't destroy stores that have employees")
        return false
      end
    end
end
