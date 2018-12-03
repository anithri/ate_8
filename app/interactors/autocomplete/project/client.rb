# frozen_string_literal: true

module Autocomplete
  module Project
    class Client
      include Interactor

      before do
        context.client_project_class ||= ClientProject
      end

      def call
        context.client_projects = find_projects
        context.client_total_count = find_projects.count
      end

      def find_projects
        @projects = if context.project_id
          client_project_class.id_match(context.project_id)
        else
          client_project_class.autocomplete(context.term)
        end
      end

      def client_project_class
        context.client_project_class
      end
    end
  end
end
