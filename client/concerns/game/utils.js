import { parseList as parsePlayerList } from 'concerns/boardLocation'
import { normalizeWorkers } from 'concerns/worker/utils'

export const parse = gameData => {
  return {
    ...gameData,
    players: parsePlayerList(gameData.players),
    workerTypes: normalizeWorkers(gameData.workerTypes),
  }
}

export default parse
