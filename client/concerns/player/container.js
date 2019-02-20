import { GET_PLAYER } from './query'
import { parsePlayer } from './utils'
import { createByIdContainer } from 'concerns/base'

export const PlayerContainer = args =>
  createByIdContainer({
    concern: 'player',
    parser: parsePlayer,
    query: GET_PLAYER,
    ...args,
  })
