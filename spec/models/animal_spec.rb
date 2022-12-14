require 'rails_helper'

RSpec.describe Animal, type: :model do
  it 'is not valid without an entry' do
    animal = Animal.create common_name: nil, scientific_binomial: nil 
    expect(animal.errors[:common_name]).to_not be_empty
    expect(animal.errors[:scientific_binomial]).to_not be_empty
  end
  it 'is not unique' do
    Animal.create common_name: 'dog', scientific_binomial: 'dogus domistica'
    dog = Animal.create common_name: 'dog', scientific_binomial: 'dogus domistica'
    expect(dog.errors[:common_name]).to_not be_empty
    expect(dog.errors[:scientific_binomial]).to_not be_empty
  end
  it 'should not be the same' do
    dog = Animal.create common_name: 'dog', scientific_binomial: 'dog'
    expect(dog.errors[:common_name]).to_not be_empty
  end
end
