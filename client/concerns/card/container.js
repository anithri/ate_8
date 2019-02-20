import { createByIdContainer } from '../base'
import { GET_CARD } from './query'
import { parseCard } from './utils'

export const CardContainer = args =>
  createByIdContainer({
    concern: 'card',
    parser: parseCard,
    query: GET_CARD,
    ...args,
  })
