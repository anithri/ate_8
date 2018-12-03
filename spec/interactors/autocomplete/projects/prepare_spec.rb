# frozen_string_literal: true

require 'rails_helper'
describe Autocomplete::Project::Prepare, type: :interactor do
  describe '.call' do
    let(:prep_options) { {} }
    subject(:context) do
      Autocomplete::Project::Prepare.call(prep_options)
    end

    it 'should return a result' do
      expect(subject).to be_an Interactor::Context
    end

    describe 'term missing' do
      let(:prep_options) { {} }

      it 'should set term to empty string' do
        expect(subject.term).to eq ''
      end

      it 'should set hint' do
        puts subject.inspect
        puts subject.hint.inspect
        expect(subject.hint[:type]).to eq 'invalidTerm'
      end
    end

    describe 'term too short' do
      let(:prep_options) { {term: 'ab'} }

      it 'should set hint[:type]' do
        expect(subject.hint[:type]).to eq 'invalidTerm'
      end
      it 'should set a hint' do
        expect(subject.hint[:content]).to include('too short')
      end
      it 'should set all_projects' do
        expect(subject.all_projects).to eq []
      end
      it 'should set total_count' do
        expect(subject.total_count).to eq 0
      end
    end

    describe 'term too long' do
      let(:prep_options) { {term: 'ab' * 10} }
      it 'should set hint[:type]' do
        expect(subject.hint[:type]).to eq 'invalidTerm'
      end
      it 'should set a hint' do
        expect(subject.hint[:content]).to include('too long')
      end
      it 'should set all_projects' do
        expect(subject.all_projects).to eq []
      end
      it 'should set total_count' do
        expect(subject.total_count).to eq 0
      end
    end

    describe '.project_id' do
      describe 'project_id is a number' do
        let(:prep_options) { {term: '1234'} }
        it 'should set term to integer' do
          expect(subject.project_id).to be_an Integer
        end
      end

      describe 'project_id is not a number' do
        let(:prep_options) { {term: 'doh'} }
        it 'should set term to integer' do
          expect(subject.project_id).to be_nil
        end
      end

      describe 'project_id has a category' do
        let(:prep_options) { {term: 'g153'} }
        it 'should set term to integer' do
          expect(subject.project_type).to eq 'g'
          expect(subject.project_id).to eq 153
        end
      end
    end
  end
end
