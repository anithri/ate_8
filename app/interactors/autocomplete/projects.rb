module Autocomplete
  class Projects
    include Interactor::Organizer

    VALID_LENGTHS = 3..16

    MAX_RESULTS = 16

    organize Autocomplete::Project::Prepare,
             Autocomplete::Project::Internal,
             Autocomplete::Project::Client,
             Autocomplete::Project::Compile

  end
end
