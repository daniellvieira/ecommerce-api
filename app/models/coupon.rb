class Coupon < ApplicationRecord
  # Enums
  enum status: { active: 1,  inactive: 2 }
  # Validations
  validates :name, presence: true
  validates :code, presence: true, uniqueness: { case_sensitive: false }
  validates :status, presence: true
  validates :discount_value, presence: true, numericality: { greater_than: 0 }
  validates :max_use, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :due_date, presence: true
end
