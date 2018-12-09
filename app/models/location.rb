class Location < ActiveHash::Base
  include ActiveHashGlobalId

  PROJECT_COUNT = 16
  PLAYER_COUNT  = 4

  field :name
  field :group

  PLAYER_COUNT.times do |i|
    create id: "player#{i + 1}", name: "Player #{i + 1}", group: "player"
  end

  create id: 'bar', name: 'Bar', group: "common"
  create id: 'draw', name: 'Draw', group: "common"
  create id: 'dead', name: 'Dead', group: "common"
  create id: 'discard', name: 'Discard', group: "common"
  create id: 'reserve', name: 'Reserve', group: "common"

  PROJECT_COUNT.times do |i|
    create id: "project#{i + 1}", name: "Project #{i + 1}", group: "project"
  end

end
