import { createByIdContainer } from '../../base'
import { GET_CARD_DECK } from './query'
import { parseCardDeck } from './utils'

export const CardDeckContainer = args =>
  createByIdContainer({
    concern: 'cardDeck',
    parser: parseCardDeck,
    query: GET_CARD_DECK,
    ...args,
  })
