export const parseGameList = ({ games: { all } }) => {
  return all.map(({ game }) => game)
}
