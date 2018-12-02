# frozen_string_literal: true

require 'rails_helper'

describe Autocomplete::Project::Internal, type: :interactor do
  describe '.call' do
    subject(:context) do
      Autocomplete::Project::Internal.call(internal_options)
    end

    let(:internal_options) { {} }
    it 'should return a result' do
      expect(subject).to be_an Interactor::Context
    end
  end
end
