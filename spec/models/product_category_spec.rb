require 'rails_helper'

RSpec.describe ProductCategory, type: :model do
  # Relationships
  it { expect(subject).to belong_to :product }
  it { expect(subject).to belong_to :category }

  it_behaves_like "name searchable concern", :category
end
