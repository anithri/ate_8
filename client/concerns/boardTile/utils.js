export const parseData = boardLocationData => {
  return boardLocationData.all.map(g => g.game)
}
