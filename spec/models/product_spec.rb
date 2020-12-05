require 'rails_helper'

RSpec.describe Product, type: :model do
  subject { build(:product) }
  # Concerns
  it_behaves_like 'name searchable concern', :product
  it_behaves_like 'paginatable concern', :product
  # Enums
  it { expect(subject).to define_enum_for(:status).with_values({ available: 1, unavailable: 2 }) }
  # Relationships
  it { expect(subject).to belong_to :productable }
  it { expect(subject).to have_many(:product_categories).dependent(:destroy) }
  it { expect(subject).to have_many(:categories).through(:product_categories) }
  # Active Storage
  it { expect(subject).to validate_presence_of(:image) }
  # Validations
  it { expect(subject).to validate_presence_of(:name) }
  it { expect(subject).to validate_uniqueness_of(:name).case_insensitive }
  it { expect(subject).to validate_presence_of(:description) }
  it { expect(subject).to validate_presence_of(:price) }
  it { expect(subject).to validate_numericality_of(:price).is_greater_than(0) }
  it { expect(subject).to validate_presence_of(:status) }

end
