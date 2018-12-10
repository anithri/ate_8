class Location < ActiveHash::Base
  include ActiveHashGlobalId

  PROJECT_COUNT = 16
  PLAYER_COUNT  = 4

  ANY_NUMBER     = 0..Card.count
  EXACTLY_ONE    = 1..1
  OPTIONALLY_ONE = 0..1
  NONE = 0..0

  field :name
  field :group
  field :cards
  field :workers

  PLAYER_COUNT.times do |i|
    create id: "player#{i + 1}",
           name: "Player #{i + 1}",
           group: 'players',
           cards: ANY_NUMBER,
           workers: OPTIONALLY_ONE
  end

  create id: 'bar',
         name: 'Bar',
         group: 'common',
         cards: NONE,
         workers: ANY_NUMBER

  create id: 'draw',
         name: 'Draw',
         group: 'common',
         cards: ANY_NUMBER,
         workers: ANY_NUMBER

  create id: 'dead',
         name: 'Dead',
         group: 'common',
         cards: ANY_NUMBER,
         workers: ANY_NUMBER

  create id: 'discards',
         name: 'Discards',
         group: 'common',
         cards: ANY_NUMBER,
         workers: ANY_NUMBER

  create id: 'reserve',
         name: 'Reserve',
         group: 'common',
         cards: NONE,
         workers: ANY_NUMBER


  PROJECT_COUNT.times do |i|
    create id: "project#{i + 1}",
           name: "Project #{i + 1}",
           group: 'projects',
           cards: OPTIONALLY_ONE,
           workers: ANY_NUMBER

  end

end
