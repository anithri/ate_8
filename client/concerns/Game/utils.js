import { normalizePlayers } from 'concerns/Player/utils'
import { normalizeWorkers } from 'concerns/Worker/utils'

export const normalizeData = gameData => {
  return {
    ...gameData,
    players: normalizePlayers(gameData.players),
    workerTypes: normalizeWorkers(gameData.workerTypes),
  }
}

export default normalizeData
