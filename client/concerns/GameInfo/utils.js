import { normalizeWorkers } from 'concerns/Worker/utils'

export const normalizeGameInfo = gameInfoData => {
  return {
    ...gameInfoData,
    workerTypes: normalizeWorkers(gameInfoData.workerTypes),
    board: {
      activeWorkers: normalizeWorkers(gameInfoData.board.activeWorkers),
      deadWorkers: normalizeWorkers(gameInfoData.board.deadWorkers),
      pendingWorkers: normalizeWorkers(gameInfoData.board.pendingWorkers),
    },
  }
}

export default normalizeGameInfo
