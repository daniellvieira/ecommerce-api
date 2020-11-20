require 'rails_helper'


RSpec.describe Category, type: :model do
  # Relationships
  it { expect(subject).to have_many(:product_categories).dependent(:destroy) }
  it { expect(subject).to have_many(:products).through(:product_categories) }
  # Validations
  it { expect(subject).to validate_presence_of(:name) }
  it { expect(subject).to validate_uniqueness_of(:name).case_insensitive }
end
