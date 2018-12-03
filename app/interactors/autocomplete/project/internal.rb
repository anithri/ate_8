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
        context.internal_total_count = find_projects.count
      end

      def find_projects
        @projects = if context.project_id
          # TODO update when internal projects settles down
          internal_project_class.where(id: context.project_id)
        else
          internal_project_class.autocomplete(context.term).order(id: :desc)
        end
      end

      def internal_project_class
        context.internal_project_class
      end
    end
  end
end
