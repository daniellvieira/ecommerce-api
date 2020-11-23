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
    it 'should be invalid' do
      expect(subject.valid?).to be_falsey
    end
    it 'adds an error on model' do
      subject.valid?
      expect(subject.errors.keys).to include(:date)
    end
  end
  context 'when date is equal current date' do

  end
  context 'when date is greater than current date' do

  end
end