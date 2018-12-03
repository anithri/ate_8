# frozen_string_literal: true

require 'rails_helper'

describe Autocomplete::Project::Internal, type: :interactor do
  describe '.call' do
    let(:internal_options) { {term: '153'} }

    subject(:context) do
      Autocomplete::Project::Internal.call(internal_options)
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

    describe '.internal_project_class' do
      it 'should have a default' do
        expect(subject.internal_project_class).to be InternalProject
      end
    end

    context 'when project_id is an int' do
      let(:internal_options) do
        {
          term:                   '153',
          project_id:             153,
          internal_project_class: mocked_internal_project
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
end
