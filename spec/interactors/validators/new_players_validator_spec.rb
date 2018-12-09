# frozen_string_literal: true

class FakeClass
  include ActiveModel::Validations
  attr_accessor :new_player_ids
  validates_with ::NewPlayersValidator
end

describe NewPlayersValidator do

  let(:obj) { FakeClass.new }

  it 'should be invalid' do
    expect(obj).to_not be_valid
  end

  it 'should have array error' do
    obj.valid?
    has_array = obj.errors.messages[:new_player_ids].any?{|e| e.include? 'array'}
    expect(has_array).to be_truthy
  end

  it 'should have length error' do
    obj.new_player_ids = []
    obj.valid?
    has_array = obj.errors.messages[:new_player_ids].any?{|e| e.include? '4'}
    expect(has_array).to be_truthy

    obj.new_player_ids = [1,2,3,4,6]
    obj.valid?
    has_array = obj.errors.messages[:new_player_ids].any?{|e| e.include? '4'}
    expect(has_array).to be_truthy
  end

  it 'should have not all users found error' do
    obj.new_player_ids = [1,2,3,40]
    obj.valid?
    puts obj.errors.inspect
    missing_users = obj.errors.messages[:new_player_ids].any?{|e| e.include? 'Not all users'}
    expect(missing_users).to be_truthy
  end
end
