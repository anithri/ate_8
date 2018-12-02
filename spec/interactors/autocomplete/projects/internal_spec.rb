require 'rails_helper'

describe Autocomplete::Project::Internal, type: :interactor do
  describe '.call' do
    subject(:context) {
      Autocomplete::Project::Internal.call(internal_options)
    }

    let(:internal_options) { {} }
    it 'should return a result' do
      expect(subject).to be_an Interactor::Context
    end
  end
end
