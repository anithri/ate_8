# frozen_string_literal: true

class FakeClass
  include ActiveModel::Validations
  attr_accessor :new_player_ids
  validates_with ::NewPlayersValidator
end

describe NewPlayersValidator do

  let(:obj) { FakeClass.new }
  let(:errors) { obj.errors.messages[:new_player_ids] }

  context 'no new_player_ids at all' do
    it 'should be invalid' do
      obj.valid?
      expect(obj).to_not be_valid
      expect(errors.any? { |e| e.include? 'exist' }).to be_truthy
    end
  end

  context 'new_player_ids is not an array' do
    it 'should have array error' do
      obj.new_player_ids = :bob
      obj.valid?
      has_array = errors.any? { |e| e.include? 'array' }
      expect(obj).to_not be_valid
      expect(has_array).to be_truthy
    end
  end

  context 'wrong length of array' do
    it 'should have length error' do
      obj.new_player_ids = []
      obj.valid?
      has_array = obj.errors.messages[:new_player_ids].any? { |e| e.include? '4' }
      expect(has_array).to be_truthy

      obj.new_player_ids = [1, 2, 3, 4, 6]
      obj.valid?
      has_array = obj.errors.messages[:new_player_ids].any? { |e| e.include? '4' }
      expect(has_array).to be_truthy
    end
  end

  context 'missing users' do
    it 'should have not all users found error' do
      obj.new_player_ids = [1, 2, 3, 40]
      obj.valid?
      missing_users = obj.errors.messages[:new_player_ids].any? { |e| e.include? 'missing users' }
      expect(missing_users).to be_truthy
    end
  end
end
