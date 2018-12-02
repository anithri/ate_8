require 'rails_helper'

describe Autocomplete::Project::Compile, type: :interactor do
  describe '.call' do
    subject(:context) {
      Autocomplete::Project::Compile.call(compile_options)
    }

    let(:compile_options) { {} }
    it 'should return a result' do
      expect(subject).to be_an Interactor::Context
    end
  end
end
