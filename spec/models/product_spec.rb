require 'rails_helper'

RSpec.describe Product, type: :model do
  subject { build(:product) }
  # Relationships
  it { expect(subject).to belong_to :productable }
  it { expect(subject).to have_many(:product_categories).dependent(:destroy) }
  it { expect(subject).to have_many(:categories).through(:product_categories) }
  # Validations
  it { expect(subject).to validate_presence_of(:name) }
  it { expect(subject).to validate_uniqueness_of(:name).case_insensitive }
  it { expect(subject).to validate_presence_of(:description) }
  it { expect(subject).to validate_presence_of(:price) }
  it { expect(subject).to validate_numericality_of(:price).is_greater_than(0) }
end