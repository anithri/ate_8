# frozen_string_literal: true

module Autocomplete
  module Project
    class Prepare
      include Interactor

      before do
        unless Autocomplete::Projects::VALID_LENGTHS.include?(term.length)
          set_invalid_message(term.length, Autocomplete::Projects::VALID_LENGTHS)
          context.fail!
        end
      end

      def call
        context.project_id = term.to_i if term == term.to_i.to_s
        case context.term
        when /^(\d+)$/
          context.project_id = term.to_i
        when /^(go?|rd?)(\d+)$/
          context.project_id   = $2.to_i
          context.project_type = $1
        end
      end

      def term
        context.term ||= ''
      end

      def set_invalid_message(term_length, valid_range)
        context.hint         = {
          type: 'invalidTerm'
        }
        context.all_projects = []
        context.total_count  = 0
        if term_length == 0
          context.hint[:content] = "empty term, minimum length is #{valid_range.min}"
        elsif term_length < valid_range.min
          context.hint[:content] = "term too short, minimum length is #{valid_range.min}"
        elsif term_length > valid_range.max
          context.hint[:content] = "term too long, maximum length is #{valid_range.min}"
        end
      end
    end
  end
end
