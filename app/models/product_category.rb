class ProductCategory < ApplicationRecord
  # Relationships
  belongs_to :product, required: true
  belongs_to :category, required: true
end
