export const parseCardDeck = ({ deck }) => {
  return {
    ...deck,
    cardCount: deck.cards.totalCount,
  }
}
