class Location < ActiveHash::Base
  include ActiveHashGlobalId

  PROJECT_COUNT = 16
  PLAYER_COUNT  = 4

  ANY_NUMBER     = 0..Card.count
  EXACTLY_ONE    = 1..1
  OPTIONALLY_ONE = 0..1
  NONE           = 0..0

  field :name
  field :group
  field :cards_range
  field :workers_range

  PLAYER_COUNT.times do |i|
    create id:            "player#{i + 1}",
           name:          "Player #{i + 1}",
           group:         'players',
           cards_range:    ANY_NUMBER,
           workers_range: OPTIONALLY_ONE
  end

  create id:            'bar',
         name:          'Bar',
         group:         'common',
         cards_range:    NONE,
         workers_range: ANY_NUMBER

  create id:            'draw',
         name:          'Draw',
         group:         'common',
         cards_range:    ANY_NUMBER,
         workers_range: ANY_NUMBER

  create id:            'dead',
         name:          'Dead',
         group:         'common',
         cards_range:    ANY_NUMBER,
         workers_range: ANY_NUMBER

  create id:            'discards',
         name:          'Discards',
         group:         'common',
         cards_range:    ANY_NUMBER,
         workers_range: ANY_NUMBER

  create id:            'reserve',
         name:          'Reserve',
         group:         'common',
         cards_range:    NONE,
         workers_range: ANY_NUMBER


  PROJECT_COUNT.times do |i|
    create id:            "project#{i + 1}",
           name:          "Project #{i + 1}",
           group:         'projects',
           cards_range:    OPTIONALLY_ONE,
           workers_range: ANY_NUMBER

  end

  def has_workers?
    workers_range.include? 1
  end

  def has_cards?
    cards_range.cover? 1
  end
end
