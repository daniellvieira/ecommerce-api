class SystemRequirement < ApplicationRecord
  # Concerns
  include NameSearchable
  include Paginatable
  # Relationships
  has_many :games, dependent: :restrict_with_error
  # Validations
  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :operational_system, presence: true
  validates :storage, presence: true
  validates :processor, presence: true
  validates :memory, presence: true
  validates :video_board, presence: true
end
