require "rails_helper"

class Validatable
  include ActiveModel::Validations
  # Attributes
  attr_accessor :date
  # Validations
  validates :date, future_date: true
end

describe FutureDateValidator, type: :validators do
  subject { Validatable.new }

  context 'when date is before current date' do
    before { subject.date = 1.day.ago }
    it { expect(subject.valid?).to be_falsey }
    it 'adds an error on model' do
      subject.valid?
      expect(subject.errors.keys).to include(:date)
    end
  end

  context 'when date is equal current date' do
    before { subject.date = Time.zone.now }
    it { expect(subject.valid?).to be_falsey }
    it 'adds an error on model' do
      subject.valid?
      expect(subject.errors.keys).to include(:date)
    end
  end

  context 'when date is greater than current date' do
    before { subject.date = Time.zone.now + 1.day }
    it { expect(subject.valid?).to be_truthy }
  end
end
