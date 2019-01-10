module Game
  module Bits
    class Card < ApplicationActiveHash
      include ActiveHashGlobalId

      field :name
      field :worker_ids
      alias_method :slug, :id

      create id:         'card1',
             name:       "Test Card #1",
             worker_ids: ['workerPurple', 'workerRed']

      create id:         'card2',
             name:       "Test Card #2",
             worker_ids: ['workerRed', 'workerPurple']

      create id:         'card3',
             name:       "Test Card #3",
             worker_ids: ['workerGreen', 'workerRed']

      create id:         'card4',
             name:       "Test Card #4",
             worker_ids: ['workerRed', 'workerGreen']

      create id:         'card5',
             name:       "Test Card #5",
             worker_ids: ['workerBlue', 'workerRed']

      create id:         'card6',
             name:       "Test Card #6",
             worker_ids: ['workerRed', 'workerBlue']

      create id:         'card7',
             name:       "Test Card #7",
             worker_ids: ['workerRed', 'workerPurple']

      create id:         'card8',
             name:       "Test Card #8",
             worker_ids: ['workerPurple', 'workerRed']

      create id:         'card9',
             name:       "Test Card #9",
             worker_ids: ['workerGreen', 'workerPurple']

      create id:         'card10',
             name:       "Test Card #10",
             worker_ids: ['workerPurple', 'workerGreen']

      create id:         'card11',
             name:       "Test Card #'workerRed'",
             worker_ids: ['workerBlue', 'workerPurple']

      create id:         'card12',
             name:       "Test Card #'workerBlue'",
             worker_ids: ['workerPurple', 'workerBlue']

      create id:         'card13',
             name:       "Test Card #'workerGreen'",
             worker_ids: ['workerRed', 'workerGreen']

      create id:         'card14',
             name:       "Test Card #'workerPurple'",
             worker_ids: ['workerGreen', 'workerRed']

      create id:         'card15',
             name:       "Test Card #15",
             worker_ids: ['workerPurple', 'workerGreen']

      create id:         'card16',
             name:       "Test Card #16",
             worker_ids: ['workerGreen', 'workerPurple']

      create id:         'card17',
             name:       "Test Card #17",
             worker_ids: ['workerBlue', 'workerGreen']

      create id:         'card18',
             name:       "Test Card #18",
             worker_ids: ['workerGreen', 'workerBlue']

      create id:         'card19',
             name:       "Test Card #19",
             worker_ids: ['workerRed', 'workerBlue']

      create id:         'card20',
             name:       "Test Card #20",
             worker_ids: ['workerBlue', 'workerRed']

      create id:         'card21',
             name:       "Test Card #21",
             worker_ids: ['workerPurple', 'workerBlue']

      create id:         'card22',
             name:       "Test Card #22",
             worker_ids: ['workerBlue', 'workerPurple']

      create id:         'card23',
             name:       "Test Card #23",
             worker_ids: ['workerGreen', 'workerBlue']

      create id:         'card24',
             name:       "Test Card #24",
             worker_ids: ['workerBlue', 'workerGreen']

      create id:         'card25',
             name:       "Test Card #25",
             worker_ids: ['workerRed', 'workerPurple', 'workerPurple']

      create id:         'card26',
             name:       "Test Card #26",
             worker_ids: ['workerRed', 'workerPurple', 'workerGreen']

      create id:         'card27',
             name:       "Test Card #27",
             worker_ids: ['workerRed', 'workerPurple', 'workerBlue']

      create id:         'card28',
             name:       "Test Card #28",
             worker_ids: ['workerRed', 'workerGreen', 'workerPurple']

      create id:         'card29',
             name:       "Test Card #29",
             worker_ids: ['workerRed', 'workerGreen', 'workerGreen']

      create id:         'card30',
             name:       "Test Card #30",
             worker_ids: ['workerRed', 'workerGreen', 'workerBlue']

      create id:         'card31',
             name:       "Test Card #31",
             worker_ids: ['workerRed', 'workerBlue', 'workerPurple']

      create id:         'card32',
             name:       "Test Card #32",
             worker_ids: ['workerRed', 'workerBlue', 'workerGreen']

      create id:         'card33',
             name:       "Test Card #33",
             worker_ids: ['workerRed', 'workerBlue', 'workerBlue']

      create id:         'card34',
             name:       "Test Card #34",
             worker_ids: ['workerPurple', 'workerRed', 'workerRed']

      create id:         'card35',
             name:       "Test Card #35",
             worker_ids: ['workerPurple', 'workerRed', 'workerGreen']

      create id:         'card36',
             name:       "Test Card #36",
             worker_ids: ['workerPurple', 'workerRed', 'workerBlue']

      create id:         'card37',
             name:       "Test Card #37",
             worker_ids: ['workerPurple', 'workerGreen', 'workerRed']

      create id:         'card38',
             name:       "Test Card #38",
             worker_ids: ['workerPurple', 'workerGreen', 'workerGreen']

      create id:         'card39',
             name:       "Test Card #39",
             worker_ids: ['workerPurple', 'workerGreen', 'workerBlue']

      create id:         'card40',
             name:       "Test Card #40",
             worker_ids: ['workerPurple', 'workerBlue', 'workerRed']

      create id:         'card41',
             name:       "Test Card #41",
             worker_ids: ['workerPurple', 'workerBlue', 'workerGreen']

      create id:         'card42',
             name:       "Test Card #42",
             worker_ids: ['workerPurple', 'workerBlue', 'workerBlue']

      create id:         'card43',
             name:       "Test Card #43",
             worker_ids: ['workerGreen', 'workerRed', 'workerRed']

      create id:         'card44',
             name:       "Test Card #44",
             worker_ids: ['workerGreen', 'workerRed', 'workerPurple']

      create id:         'card45',
             name:       "Test Card #45",
             worker_ids: ['workerGreen', 'workerRed', 'workerBlue']

      create id:         'card46',
             name:       "Test Card #46",
             worker_ids: ['workerGreen', 'workerPurple', 'workerRed']

      create id:         'card47',
             name:       "Test Card #47",
             worker_ids: ['workerGreen', 'workerPurple', 'workerPurple']

      create id:         'card48',
             name:       "Test Card #48",
             worker_ids: ['workerGreen', 'workerPurple', 'workerBlue']

      create id:         'card49',
             name:       "Test Card #49",
             worker_ids: ['workerGreen', 'workerBlue', 'workerRed']

      create id:         'card50',
             name:       "Test Card #50",
             worker_ids: ['workerGreen', 'workerBlue', 'workerPurple']

      create id:         'card51',
             name:       "Test Card #51",
             worker_ids: ['workerGreen', 'workerBlue', 'workerBlue']

      create id:         'card52',
             name:       "Test Card #52",
             worker_ids: ['workerBlue', 'workerRed', 'workerRed']

      create id:         'card53',
             name:       "Test Card #53",
             worker_ids: ['workerBlue', 'workerRed', 'workerPurple']

      create id:         'card54',
             name:       "Test Card #54",
             worker_ids: ['workerBlue', 'workerRed', 'workerGreen']

      create id:         'card55',
             name:       "Test Card #55",
             worker_ids: ['workerBlue', 'workerPurple', 'workerRed']

      create id:         'card56',
             name:       "Test Card #56",
             worker_ids: ['workerBlue', 'workerPurple', 'workerPurple']

      create id:         'card57',
             name:       "Test Card #57",
             worker_ids: ['workerBlue', 'workerPurple', 'workerGreen']

      create id:         'card58',
             name:       "Test Card #58",
             worker_ids: ['workerBlue', 'workerGreen', 'workerRed']

      create id:         'card59',
             name:       "Test Card #59",
             worker_ids: ['workerBlue', 'workerGreen', 'workerPurple']

      create id:         'card60',
             name:       "Test Card #60",
             worker_ids: ['workerBlue', 'workerGreen', 'workerGreen']

      def workers
        worker_ids.map { |w_id| Worker.find(w_id) }
      end

      def to_s
        self.gid
      end

      def self.shuffled
        self.all.shuffle
      end
    end
  end
end
