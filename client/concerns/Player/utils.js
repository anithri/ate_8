export const normalizeData = playerData => {
  return playerData.all.map(p => p.player)
}

export default normalizeData
