require 'rails_helper'
RSpec.describe Autocomplete::Project::Prepare, type: :interactor do

  describe '.call' do
    subject(:context) {
      Autocomplete::Project::Prepare.call(prep_options)
    }

    describe 'term missing' do
      let(:prep_options){{}}

      it 'should set term to empty string' do
        expect(subject.term).to eq ''
      end
    end

    describe 'term too short' do
      let(:prep_options) { {term: 'ab'}}

      it 'should set a hint' do
        expect(subject.hint).to include('not enough')
      end
      it 'should set all_projects' do
        expect(subject.all_projects).to eq []
      end
      it 'should set total_count' do
        expect(subject.total_count).to eq 0
      end
    end
    describe 'term too long' do
      let(:prep_options) { {term: 'ab' * 10}}
      it 'should set a hint' do
        expect(subject.hint).to include('too many')
      end
      it 'should set all_projects' do
        expect(subject.all_projects).to eq []
      end
      it 'should set total_count' do
        expect(subject.total_count).to eq 0
      end
    end
    describe 'term is a number' do
      let(:prep_options) { {term: '1234'}}
      it 'should set term to integer' do
        expect(subject.term).to be_an Integer
      end

    end

    pending "add some examples to (or delete) #{__FILE__}"
  end
end
