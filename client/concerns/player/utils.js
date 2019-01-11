import { parseWorkerList } from 'concerns/worker'

export const parsePlayer = player => {
  // console.log('normalizePlayer', playerData)
  return {
    ...player,
    requiredWorkers: parseWorkerList(player.requiredWorkers),
  }
}
