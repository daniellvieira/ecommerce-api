class Category < ApplicationRecord
  # Concerns
  include NameSearchable
  include Paginatable
  # Relationships
  has_many :product_categories, dependent: :destroy
  has_many :products, through: :product_categories
  # Validations
  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
