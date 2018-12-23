module Board
  class Location < ActiveHash::Base
    include ActiveHashGlobalId

    MAX_CARDS     = 0..Game::Card.count
    MAX_WORKERS     = 0..Game::TOTAL_WORKER_COUNT
    EXACTLY_ONE    = 1..1
    OPTIONALLY_ONE = 0..1
    NONE           = 0..0

    field :name
    field :group
    field :cards_range
    field :workers_range

    Game::PLAYER_COUNT.times do |i|
      create id:            "player#{i + 1}",
             name:          "Player #{i + 1}",
             group:         'players',
             cards_range:   MAX_CARDS,
             workers_range: OPTIONALLY_ONE
    end

    create id:            'bar',
           name:          'Bar',
           group:         'common',
           cards_range:   NONE,
           workers_range: MAX_WORKERS

    create id:            'draw',
           name:          'Draw',
           group:         'common',
           cards_range:   MAX_CARDS,
           workers_range: MAX_WORKERS

    create id:            'dead',
           name:          'Dead',
           group:         'common',
           cards_range:   MAX_CARDS,
           workers_range: MAX_WORKERS

    create id:            'discards',
           name:          'Discards',
           group:         'common',
           cards_range:   MAX_CARDS,
           workers_range: MAX_WORKERS

    create id:            'reserve',
           name:          'Reserve',
           group:         'common',
           cards_range:   NONE,
           workers_range: MAX_WORKERS


    Game::PROJECT_COUNT.times do |i|
      create id:            "project#{i + 1}",
             name:          "Project #{i + 1}",
             group:         'projects',
             cards_range:   OPTIONALLY_ONE,
             workers_range: MAX_WORKERS

    end

    def has_workers?
      workers_range.include? 1
    end

    def has_cards?
      cards_range.cover? 1
    end

    def self.cards
      all.select{|l| l.cards_range.max > 0}
    end
    def self.workers
      all.select{|l| l.workers_range.max > 0}
    end
    def self.common
      all.select{|l| l.group == 'common'}
    end
    def self.players
      all.select{|l| l.group == 'players'}
    end
    def self.projects
      all.select{|l| l.group == 'projects'}
    end

  end
end
