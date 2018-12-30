export const normalize = games_data => {
  return games_data.all.map(g => g.game)
}

export default normalize
