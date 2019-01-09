import { normalizeWorkers } from 'concerns/worker/utils'
import { parseList as parsePlayerList } from 'concerns/player'

export const parseData = data => {
  return {
    ...data,
    players: parsePlayerList(data.players),
    workerTypes: normalizeWorkers(data.workerTypes),
  }
}
