require 'rails_helper'

RSpec.describe User, type: :model do
  # Concerns
  it_behaves_like 'name searchable concern', :user
  it_behaves_like 'paginatable concern', :user
  # Enums
  it { expect(subject).to define_enum_for(:profile).with_values({ admin: 0, client: 1 }) }
  # Validations
  it { expect(subject).to validate_presence_of(:name) }
  it { expect(subject).to validate_presence_of(:profile) }
end
