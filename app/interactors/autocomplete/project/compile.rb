# frozen_string_literal: true

module Autocomplete
  module Project
    class Compile
      include Interactor

      def call
        context.all_projects = combined_results
        context.total_count  = total_count

        context.hint = generate_hint
      end

      def combined_results
        @combined ||= if context.project_id
                        context.internal_projects + context.client_projects
                      else
                        internal = context.internal_projects.take(10)

                        context.client_projects.take(20 - internal.length) + internal
                      end
      end

      def generate_hint
        hint = case combined_results.length
               when 0
                 {type: 'empty', content: 'no records found.  give up and try again'}
               when 1
                 {type: 'winner', content: 'You found it!  I hope so at least'}
               when context.all_projects.length < 20
                 {type: 'winner', content: 'This is all of them'}
               else
                 {type: 'overload', content: "#{unshown_count} more"}
               end

      end

      def total_count
        context.client_total_count + context.internal_total_count
      end

      def unshown_count
        total_count - combined_results.length
      end
    end
  end
end
