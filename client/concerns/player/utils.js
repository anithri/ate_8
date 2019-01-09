import { normalizeWorkers } from 'concerns/worker/utils'

export const parseData = data => {
  // console.log('normalizePlayer', playerData)
  return {
    ...data,
    requiredWorkers: normalizeWorkers(data.requiredWorkers),
  }
}
