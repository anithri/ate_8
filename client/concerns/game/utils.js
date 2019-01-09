import { parsePlayerList } from 'concerns/player'
import { parseWorkerList } from 'concerns/worker'

export const parseGame = data => {
  return {
    ...data,
    players: parsePlayerList(data.players),
    workerTypes: parseWorkerList(data.workerTypes),
  }
}
