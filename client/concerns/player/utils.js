import { normalizeWorkers } from 'concerns/worker/utils'

export const parseData = data => {
  // console.log('normalizePlayer', playerData)
  return {
    ...data,
    workers: normalizeWorkers(data.workers),
  }
}
