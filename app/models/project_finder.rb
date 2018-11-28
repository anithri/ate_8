class ProjectFinder

  def project(klass, id)
    projectable_klass.find(id)
  end

  def projectable_klass_from(klass)
    klass.constantize
  end

  def all_from_entries
    # return [] #TODO REMOVE had to remove to solve race condition between creating the database and reading the database
    Entry.pluck(:projectable_type, :projectable_id).uniq
  end

  def all
    all_from_entries.map do |arr|
      projectable_klass_from(arr[0]).find(arr[1])
    end.uniq
  end

  def all_names
    self.all.map do |p|
      [p.display_name, p.id]
    end
  end

  def self.all
    self.new.all
  end

end
