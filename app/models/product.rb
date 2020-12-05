class Product < ApplicationRecord
  # Concerns
  include NameSearchable
  include Paginatable
  # Enums
  enum status: { available: 1, unavailable: 2 }
  # Relationships
  belongs_to :productable, polymorphic: true, required: true
  has_many :product_categories, dependent: :destroy
  has_many :categories, through: :product_categories
  # Active Storage
  has_one_attached :image
  validates :image, presence: true
  # Validations
  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :description, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :status, presence: true
end
