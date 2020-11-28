class Category < ApplicationRecord
  include NameSearchable

  # Relationships
  has_many :product_categories, dependent: :destroy
  has_many :products, through: :product_categories
  # Validations
  validates :name, presence: true, 
                   uniqueness: { case_sensitive: false }
end
