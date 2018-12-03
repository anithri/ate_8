# frozen_string_literal: true

require 'rails_helper'

describe Autocomplete::Project::Client, type: :interactor do
  let(:client_options) { {term: '153'} }

  subject(:context) do
    Autocomplete::Project::Client.call(client_options)
  end

  # it 'should have a mocked internal_project' do
  #   MockedInternalProject = double
  #   allow(MockedInternalProject).to receive(:find_by).and_return([:woot])
  #   expect(MockedInternalProject).to have_received :find_by
  #   MockedInternalProject.find_by('woot')
  # end

  it 'should return a result' do
    expect(subject).to be_an Interactor::Context
  end

  describe '.client_project_class' do
    it 'should have a default' do
      expect(subject.client_project_class).to be ClientProject
    end
  end

  context 'when project_id is an int' do
    let(:client_options) do
      {
        term:       '153',
        project_id: 153,
      }
    end
    # it 'should find a single project' do
    #   expect(subject.internal_project_class).to eq(mocked_internal_project)
    #   expect(mocked_internal_project).to receive(:find_by).with(hash_including(id: 153))
    # end
  end

  context 'when project_id is nil' do
    it 'should ' do

    end
  end
end
