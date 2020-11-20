class Game < ApplicationRecord
  # Enums
  enum mode: { pvp: 1, pve: 2, both: 3 }
  # Relationships
  belongs_to :system_requirement, required: true
  has_one :product, as: :productable
  # Validations
  validates :mode, presence: true
  validates :release_date, presence: true
  validates :developer, presence: true
end
