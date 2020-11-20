require 'rails_helper'

RSpec.describe Coupon, type: :model do
  # Enums
  it { expect(subject).to define_enum_for(:status).with_values({ active: 1, inactive: 2 }) }
  # Validations
  it { expect(subject).to validate_presence_of :name }
  it { expect(subject).to validate_presence_of :code }
  it { expect(subject).to validate_uniqueness_of(:code).case_insensitive }
  it { expect(subject).to validate_presence_of :status }
  it { expect(subject).to validate_presence_of :discount_value }
  it { expect(subject).to validate_numericality_of(:discount_value).is_greater_than(0) }
  it { expect(subject).to validate_presence_of :max_use }
  it { expect(subject).to validate_numericality_of(:max_use).is_greater_than_or_equal_to(0) }
  it { expect(subject).to validate_presence_of :due_date }
end
