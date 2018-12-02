# frozen_string_literal: true

module Autocomplete
  module Project
    class Compile
      include Interactor

      def call
        context.all_projects = combined_results
        context.total_count  = combined_results.length
        context.hint         = if all_projects.empty?
                                 ':('
                               elsif all_projects.length == 1
                                 ':)'
                               elsif all_projects.length > 12
                                 "#{all_projects.length} matched ..."
                               else
                                 '8)'
                               end
      end

      def combined_results
        (context.internal_projects || []) + (context.client_projects || [])
      end

      def all_projects
        context.all_projects
      end
    end
  end
end
