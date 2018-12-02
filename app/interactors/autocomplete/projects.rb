# frozen_string_literal: true

module Autocomplete
  class Projects
    include Interactor::Organizer

    VALID_LENGTHS = (3..16).freeze

    MAX_RESULTS = 16

    organize Autocomplete::Project::Prepare,
             Autocomplete::Project::Internal,
             Autocomplete::Project::Client,
             Autocomplete::Project::Compile
  end
end
