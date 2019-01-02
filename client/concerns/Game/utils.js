import normalizePlayers from 'concerns/Player/utils'

export const normalizeData = gameData => {
  return {
    ...gameData,
    players: normalizePlayers(gameData.players),
  }
}

export default normalizeData
