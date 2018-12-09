class Location < ActiveHash::Base
  include ActiveHashGlobalId

  PROJECT_COUNT = 16
  PLAYER_COUNT  = 4

  field :slug
  field :name

  PLAYER_COUNT.times do |i|
    create id: i + 1, slug: "player#{i + i}", name: "Player #{i + 1}"
  end

  create id: 10, slug: 'bar', name: 'Bar'
  create id: 11, slug: 'draw', name: 'Draw'
  create id: 12, slug: 'dead', name: 'Dead'
  create id: 13, slug: 'discard', name: 'Discard'
  create id: 14, slug: 'reserve', name: 'Reserve'

  PROJECT_COUNT.times do |i|
    create id: i + 101, slug: "project#{i + 1}", name: "Project #{i + 1}"
  end
end
