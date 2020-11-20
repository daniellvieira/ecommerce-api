require 'rails_helper'

RSpec.describe SystemRequirement, type: :model do
  # Relationships
  it { expect(subject).to have_many(:games).dependent(:restrict_with_error) }
  # Validations
  it { expect(subject).to validate_presence_of(:name) }
  it { expect(subject).to validate_uniqueness_of(:name).case_insensitive }
  it { expect(subject).to validate_presence_of(:operational_system) }
  it { expect(subject).to validate_presence_of(:storage) }
  it { expect(subject).to validate_presence_of(:processor) }
  it { expect(subject).to validate_presence_of(:memory) }
  it { expect(subject).to validate_presence_of(:video_board) }
end
