require 'rails_helper'

RSpec.describe Tracker, type: :model do
  it 'fields should not be empty' do
    sighted = Tracker.create latitude: nil, longitude: nil, date: nil
    expect(sighted.errors[:latitude]).to_not be_empty
    expect(sighted.errors[:longitude]).to_not be_empty
    expect(sighted.errors[:date]).to_not be_empty
  end
end
