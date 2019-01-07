module Game
  module Bits
    class Card < ApplicationActiveHash
      include ActiveHashGlobalId

      field :name
      field :worker_ids

      create id:         'card-1',
             name:       "Test Card #1",
             worker_ids: ['workerPurple', 'workerRed']

      create id:         'card-2',
             name:       "Test Card #2",
             worker_ids: ['workerRed', 'workerPurple']

      create id:         'card-3',
             name:       "Test Card #3",
             worker_ids: ['workerGreen', 'workerRed']

      create id:         'card-4',
             name:       "Test Card #4",
             worker_ids: ['workerRed', 'workerGreen']

      create id:         'card-5',
             name:       "Test Card #5",
             worker_ids: ['workerBlue', 'workerRed']

      create id:         'card-6',
             name:       "Test Card #6",
             worker_ids: ['workerRed', 'workerBlue']

      create id:         'card-7',
             name:       "Test Card #7",
             worker_ids: ['workerRed', 'workerPurple']

      create id:         'card-8',
             name:       "Test Card #8",
             worker_ids: ['workerPurple', 'workerRed']

      create id:         'card-9',
             name:       "Test Card #9",
             worker_ids: ['workerGreen', 'workerPurple']

      create id:         'card-10',
             name:       "Test Card #10",
             worker_ids: ['workerPurple', 'workerGreen']

      create id:         'card-11',
             name:       "Test Card #'workerRed'",
             worker_ids: ['workerBlue', 'workerPurple']

      create id:         'card-12',
             name:       "Test Card #'workerBlue'",
             worker_ids: ['workerPurple', 'workerBlue']

      create id:         'card-13',
             name:       "Test Card #'workerGreen'",
             worker_ids: ['workerRed', 'workerGreen']

      create id:         'card-14',
             name:       "Test Card #'workerPurple'",
             worker_ids: ['workerGreen', 'workerRed']

      create id:         'card-15',
             name:       "Test Card #15",
             worker_ids: ['workerPurple', 'workerGreen']

      create id:         'card-16',
             name:       "Test Card #16",
             worker_ids: ['workerGreen', 'workerPurple']

      create id:         'card-17',
             name:       "Test Card #17",
             worker_ids: ['workerBlue', 'workerGreen']

      create id:         'card-18',
             name:       "Test Card #18",
             worker_ids: ['workerGreen', 'workerBlue']

      create id:         'card-19',
             name:       "Test Card #19",
             worker_ids: ['workerRed', 'workerBlue']

      create id:         'card-20',
             name:       "Test Card #20",
             worker_ids: ['workerBlue', 'workerRed']

      create id:         'card-21',
             name:       "Test Card #21",
             worker_ids: ['workerPurple', 'workerBlue']

      create id:         'card-22',
             name:       "Test Card #22",
             worker_ids: ['workerBlue', 'workerPurple']

      create id:         'card-23',
             name:       "Test Card #23",
             worker_ids: ['workerGreen', 'workerBlue']

      create id:         'card-24',
             name:       "Test Card #24",
             worker_ids: ['workerBlue', 'workerGreen']

      create id:         'card-25',
             name:       "Test Card #25",
             worker_ids: ['workerRed', 'workerPurple', 'workerPurple']

      create id:         'card-26',
             name:       "Test Card #26",
             worker_ids: ['workerRed', 'workerPurple', 'workerGreen']

      create id:         'card-27',
             name:       "Test Card #27",
             worker_ids: ['workerRed', 'workerPurple', 'workerBlue']

      create id:         'card-28',
             name:       "Test Card #28",
             worker_ids: ['workerRed', 'workerGreen', 'workerPurple']

      create id:         'card-29',
             name:       "Test Card #29",
             worker_ids: ['workerRed', 'workerGreen', 'workerGreen']

      create id:         'card-30',
             name:       "Test Card #30",
             worker_ids: ['workerRed', 'workerGreen', 'workerBlue']

      create id:         'card-31',
             name:       "Test Card #31",
             worker_ids: ['workerRed', 'workerBlue', 'workerPurple']

      create id:         'card-32',
             name:       "Test Card #32",
             worker_ids: ['workerRed', 'workerBlue', 'workerGreen']

      create id:         'card-33',
             name:       "Test Card #33",
             worker_ids: ['workerRed', 'workerBlue', 'workerBlue']

      create id:         'card-34',
             name:       "Test Card #34",
             worker_ids: ['workerPurple', 'workerRed', 'workerRed']

      create id:         'card-35',
             name:       "Test Card #35",
             worker_ids: ['workerPurple', 'workerRed', 'workerGreen']

      create id:         'card-36',
             name:       "Test Card #36",
             worker_ids: ['workerPurple', 'workerRed', 'workerBlue']

      create id:         'card-37',
             name:       "Test Card #37",
             worker_ids: ['workerPurple', 'workerGreen', 'workerRed']

      create id:         'card-38',
             name:       "Test Card #38",
             worker_ids: ['workerPurple', 'workerGreen', 'workerGreen']

      create id:         'card-39',
             name:       "Test Card #39",
             worker_ids: ['workerPurple', 'workerGreen', 'workerBlue']

      create id:         'card-40',
             name:       "Test Card #40",
             worker_ids: ['workerPurple', 'workerBlue', 'workerRed']

      create id:         'card-41',
             name:       "Test Card #41",
             worker_ids: ['workerPurple', 'workerBlue', 'workerGreen']

      create id:         'card-42',
             name:       "Test Card #42",
             worker_ids: ['workerPurple', 'workerBlue', 'workerBlue']

      create id:         'card-43',
             name:       "Test Card #43",
             worker_ids: ['workerGreen', 'workerRed', 'workerRed']

      create id:         'card-44',
             name:       "Test Card #44",
             worker_ids: ['workerGreen', 'workerRed', 'workerPurple']

      create id:         'card-45',
             name:       "Test Card #45",
             worker_ids: ['workerGreen', 'workerRed', 'workerBlue']

      create id:         'card-46',
             name:       "Test Card #46",
             worker_ids: ['workerGreen', 'workerPurple', 'workerRed']

      create id:         'card-47',
             name:       "Test Card #47",
             worker_ids: ['workerGreen', 'workerPurple', 'workerPurple']

      create id:         'card-48',
             name:       "Test Card #48",
             worker_ids: ['workerGreen', 'workerPurple', 'workerBlue']

      create id:         'card-49',
             name:       "Test Card #49",
             worker_ids: ['workerGreen', 'workerBlue', 'workerRed']

      create id:         'card-50',
             name:       "Test Card #50",
             worker_ids: ['workerGreen', 'workerBlue', 'workerPurple']

      create id:         'card-51',
             name:       "Test Card #51",
             worker_ids: ['workerGreen', 'workerBlue', 'workerBlue']

      create id:         'card-52',
             name:       "Test Card #52",
             worker_ids: ['workerBlue', 'workerRed', 'workerRed']

      create id:         'card-53',
             name:       "Test Card #53",
             worker_ids: ['workerBlue', 'workerRed', 'workerPurple']

      create id:         'card-54',
             name:       "Test Card #54",
             worker_ids: ['workerBlue', 'workerRed', 'workerGreen']

      create id:         'card-55',
             name:       "Test Card #55",
             worker_ids: ['workerBlue', 'workerPurple', 'workerRed']

      create id:         'card-56',
             name:       "Test Card #56",
             worker_ids: ['workerBlue', 'workerPurple', 'workerPurple']

      create id:         'card-57',
             name:       "Test Card #57",
             worker_ids: ['workerBlue', 'workerPurple', 'workerGreen']

      create id:         'card-58',
             name:       "Test Card #58",
             worker_ids: ['workerBlue', 'workerGreen', 'workerRed']

      create id:         'card-59',
             name:       "Test Card #59",
             worker_ids: ['workerBlue', 'workerGreen', 'workerPurple']

      create id:         'card-60',
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
