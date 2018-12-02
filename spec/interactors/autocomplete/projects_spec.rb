require 'rails_helper'

RSpec.describe Autocomplete::Projects, type: :interactor do
  it 'should be an organizer' do
    expect(subject).to be_an Interactor::Organizer
  end
end
