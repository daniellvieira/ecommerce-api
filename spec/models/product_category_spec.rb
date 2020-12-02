require 'rails_helper'

RSpec.describe ProductCategory, type: :model do
  # Relationships
  it { expect(subject).to belong_to :product }
  it { expect(subject).to belong_to :category }
end
