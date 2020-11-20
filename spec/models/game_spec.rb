require 'rails_helper'

RSpec.describe Game, type: :model do
  # Enums
  it { expect(subject).to define_enum_for(:mode).with_values({ pvp: 1, pve: 2, both: 3 }) }
  # Relationships
  it { expect(subject).to belong_to :system_requirement }
  it { expect(subject).to have_one :product }
  # Validations
  it { expect(subject).to validate_presence_of(:mode) }
  it { expect(subject).to validate_presence_of(:release_date) }
  it { expect(subject).to validate_presence_of(:developer) }
end
