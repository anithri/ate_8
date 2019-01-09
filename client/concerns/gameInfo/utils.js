import { parseWorkerList } from 'concerns/worker'

export const parseGameInfo = gameInfoData => {
  return {
    ...gameInfoData,
    workerTypes: parseWorkerList(gameInfoData.workerTypes),
    board: {
      activeWorkers: parseWorkerList(gameInfoData.board.activeWorkers),
      deadWorkers: parseWorkerList(gameInfoData.board.deadWorkers),
      pendingWorkers: parseWorkerList(gameInfoData.board.pendingWorkers),
    },
  }
}
