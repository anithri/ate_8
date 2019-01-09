import { parseWorkerList } from 'concerns/worker'

export const parsePlayer = data => {
  // console.log('normalizePlayer', playerData)
  return {
    ...data,
    requiredWorkers: parseWorkerList(data.requiredWorkers),
  }
}
