# frozen_string_literal: true

class ProjectsSearcher
  def self.search(params)
    q = params[:q]
    ProjectsSearcher.new(q).results
  end

  def initialize(q)
    @q     = q
    @q_go  = find_project_number(q, /^(go?)?(\d+)/i)
    @q_gop = find_project_number(q, /^(rd)?(\d+)/i)
    @q_cp  = find_project_number(q, /^(c)?(\d+)/i)
  end

  def find_project_number(q, re)
    if m = re.match(q)
      m[2].to_i
    else
      0
    end
  end

  # @return [Array]
  def results
    r = organize_raw_results(
      @q_go.zero? ? [] : InternalProject.where('cast(id as text) like ?', "%#{@q_go}%"),
      @q_cp.zero? ? [] : ClientProject.where('cast(id as text) like ?', "%#{@q_cp}%"),
      @q_gop.zero? ? [] : InternalProject.where('cast(id as text) like ?', "%#{@q_gop}%"),
      ClientProject.where('lower(name) like ?', "%#{@q}%"),
      InternalProject.where('lower(name) like ?', "%#{@q}%")
    )
    {
      results: r.map do |p|
        {
          id: p.to_global_id.to_s,
          text: p.display_name,
          name: p.name,
          project_type: p.class.to_s
        }
      end
    }
  end

  def organize_raw_results(*all_results)
    # why?  so that 999 will always end up at the top of the list.
    all_results.flatten.sort_by { |r| r.id == 999 ? 100_000_000 : r.id }.reverse
  end
end
