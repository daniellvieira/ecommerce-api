class Product < ApplicationRecord
  # Relationships
  belongs_to :productable, polymorphic: true, required: true
  has_many :product_categories, dependent: :destroy
  has_many :categories, through: :product_categories
  # Active Storage
  has_one_attached :image
  # Validations
  validates :image, presence: true
  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :description, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
end
