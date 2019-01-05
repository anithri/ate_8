import { normalizeWorkers } from 'concerns/worker/utils'

export const parseData = data => {
  return {
    ...data,
    workerTypes: normalizeWorkers(data.workerTypes),
    board: {
      activeWorkers: normalizeWorkers(data.board.activeWorkers),
      deadWorkers: normalizeWorkers(data.board.deadWorkers),
      pendingWorkers: normalizeWorkers(data.board.pendingWorkers),
    },
  }
}
