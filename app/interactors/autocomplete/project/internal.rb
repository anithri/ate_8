# frozen_string_literal: true

module Autocomplete
  module Project
    class Internal
      include Interactor

      before do
        context.internal_project_class ||= InternalProject
      end

      def call
        context.internal_projects = find_projects
      end

      def find_projects
        if context.project_id
          [internal_project_class.find_by(id: context.project_id)]
        else
          []
        end
      end

      def internal_project_class
        context.internal_project_class
      end
    end
  end
end
