import { parseWorkerSummary } from 'concerns/worker'

export const parseGameInfo = gameInfoData => {
  return {
    ...gameInfoData,
    board: {
      activeWorkers: parseWorkerSummary(gameInfoData.board.activeWorkers),
      deadWorkers: parseWorkerSummary(gameInfoData.board.deadWorkers),
      pendingWorkers: parseWorkerSummary(gameInfoData.board.pendingWorkers),
    },
  }
}
