module Autocomplete
  module Project
    class Prepare
      include Interactor

      before do
        if term && Autocomplete::Projects::VALID_LENGTHS.include?(term.length)
        end
        if term.length <
          context.hint         = 'not enough characters'
          context.all_projects = []
          context.total_count  = 0
        elsif term.length > Autocomplete::Projects::MAX_TERM_LENGTH
          context.hint         = 'too many characters'
          context.all_projects = []
          context.total_count  = 0
        end
      end

      def call
      end

      def term
        context.term
      end



    end
  end
end
