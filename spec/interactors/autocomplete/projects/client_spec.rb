# frozen_string_literal: true

require 'rails_helper'

describe Autocomplete::Project::Client, type: :interactor do
  describe '.call' do
    subject(:context) do
      Autocomplete::Project::Client.call(client_options)
    end

    let(:client_options) { {} }
    it 'should return a result' do
      expect(subject).to be_an Interactor::Context
    end
  end
end
