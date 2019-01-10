import { parseCardList } from 'concerns/card'

export const parseBoardSpace = ({ boardSpace }) => {
  return {
    ...boardSpace,
    cards: parseCardList(boardSpace.cards),
  }
}
