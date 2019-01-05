module Board
  class Location < ActiveHash::Base
    include ActiveHashGlobalId
    GROUPS         = [:all, :cards, :common, :players, :projects, :workers]
    MAX_CARDS      = 0..Game::Card.count
    MAX_WORKERS    = 0..Game::TOTAL_WORKER_COUNT
    EXACTLY_ONE    = 1..1
    OPTIONALLY_ONE = 0..1
    NONE           = 0..0

    SUMMARIES = {
      active:  ['bar', 'draw', 'discards'],
      dead:    ['dead'],
      pending: ['reserve']
    }

    field :name
    field :group
    field :cards_range
    field :has_cards, default: false
    field :workers_range
    field :has_workers, default: true

    Game::PLAYER_COUNT.times do |i|
      create id:            "player#{i + 1}",
             name:          "player #{i + 1}",
             group:         'players',
             cards_range:   MAX_CARDS,
             has_cards:     true,
             workers_range: NONE,
             has_workers:   false
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
           has_cards:     true,
           workers_range: MAX_WORKERS

    create id:            'dead',
           name:          'Dead',
           group:         'common',
           cards_range:   MAX_CARDS,
           has_cards:     true,
           workers_range: MAX_WORKERS

    create id:            'discards',
           name:          'Discards',
           group:         'common',
           cards_range:   MAX_CARDS,
           has_cards:     true,
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
             has_cards:     true,
             workers_range: MAX_WORKERS

    end

    def self.cards
      where(has_cards: true)
    end

    def self.workers
      where(has_workers: true)
    end

    def self.common
      where(group: 'common')
    end

    def self.players
      where(group: 'players')
    end

    def self.projects
      where(group: 'projects')
    end

    def self.with_group_or_id(to_check)
      if GROUPS.include?(to_check.to_sym)
        self.send(to_check)
      else
        self.find(to_check.to_s)
      end
    end
  end
end
