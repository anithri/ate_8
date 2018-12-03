# frozen_string_literal: true

require 'rails_helper'

describe Autocomplete::Project::Compile, type: :interactor do
  describe '.call' do
    subject(:context) do
      Autocomplete::Project::Compile.call(compile_options)
    end

    let(:compile_options) do
      {
        client_projects:      [],
        internal_projects:    [],
        client_total_count:   0,
        internal_total_count: 0
      }
    end

    it 'should return a result' do
      expect(subject).to be_an Interactor::Context
    end
  end
end
