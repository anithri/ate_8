require 'rails_helper'

describe Autocomplete::Project::Client, type: :interactor do
  describe '.call' do
    subject(:context) {
      Autocomplete::Project::Client.call(client_options)
    }


    let(:client_options) { {} }
    it 'should return a result' do
      expect(subject).to be_an Interactor::Context
    end
  end
end
