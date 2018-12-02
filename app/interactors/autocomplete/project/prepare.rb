module Autocomplete
  module Project
    class Prepare
      include Interactor

      before do
        if Autocomplete::Projects::VALID_LENGTHS.include?(term.length)
          if term === term.to_i.to_s
            context.project_id = term.to_i
          end
        else
          set_invalid_message(term.length, Autocomplete::Projects::VALID_LENGTHS)
          context.fail!
        end

      end

      def call
      end

      def term
        context.term ||= ''
      end

      def set_invalid_message(term_length, valid_range)
        context.hint_type = 'invalidTerm'
        context.all_projects = []
        context.total_count  = 0
        if term_length == 0
          context.hint_content = "empty term, minimum length is #{valid_range.min}"
        elsif term_length < valid_range.min
          context.hint_content = "term too short, minimum length is #{valid_range.min}"
        elsif term_length > valid_range.max
          context.hint_content = "term too long, maximum length is #{valid_range.min}"
        end
      end
    end
  end
end
