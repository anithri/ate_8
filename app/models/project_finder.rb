# frozen_string_literal: true

class ProjectFinder
  def project(_klass, id)
    projectable_klass.find(id)
  end

  def projectable_klass_from(klass)
    klass.constantize
  end

  def all_from_entries
    # TODO: REMOVE had to remove to solve race condition
    # between creating the database and reading the database
    # return []

    Entry.pluck(:projectable_type, :projectable_id).uniq
  end

  def all
    all_from_entries.map do |arr|
      projectable_klass_from(arr[0]).find(arr[1])
    end.uniq
  end

  def all_names
    all.map do |p|
      [p.display_name, p.id]
    end
  end

  def self.all
    new.all
  end
end
