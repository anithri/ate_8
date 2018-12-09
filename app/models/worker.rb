# frozen_string_literal: true

class Worker < ActiveHash::Base
  include ActiveHashGlobalId

  field :name

  create id:   'workerRed',
         name: 'Red'

  create id:   'workerBlue',
         name: 'Blue'

  create id:   'workerGreen',
         name: 'Green'

  create id:   'workerPurple',
         name: 'Purple'
end
