class Location < ActiveHash::Base
  include ActiveHashGlobalId

  PROJECT_COUNT = 16
  PLAYER_COUNT  = 4

  field :name

  PLAYER_COUNT.times do |i|
    create id: "player#{i + 1}", name: "Player #{i + 1}"
  end

  create id: 'bar', name: 'Bar'
  create id: 'draw', name: 'Draw'
  create id: 'dead', name: 'Dead'
  create id: 'discard', name: 'Discard'
  create id: 'reserve', name: 'Reserve'

  PROJECT_COUNT.times do |i|
    create id: "project#{i + 1}", name: "Project #{i + 1}"
  end
end
