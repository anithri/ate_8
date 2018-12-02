# frozen_string_literal: true

require 'rails_helper'

describe Autocomplete::Project::Internal, type: :interactor do
  describe '.call' do
    let(:internal_options) { {term: '153'} }

    subject(:context) do
      Autocomplete::Project::Internal.call(internal_options)
    end

    it 'should return a result' do
      expect(subject).to be_an Interactor::Context
    end
  end
end
