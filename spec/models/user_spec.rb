require 'rails_helper'

RSpec.describe User, type: :model do
  # Enums
  it { expect(subject).to define_enum_for(:profile).with_values({ admin: 0, client: 1 }) }
  # Validations
  it { expect(subject).to validate_presence_of(:name) }
  it { expect(subject).to validate_presence_of(:profile) }
end
