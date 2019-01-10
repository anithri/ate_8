import { parseWorkerSummary } from 'concerns/worker'

export const parseGameInfo = gameInfoData => {
  return {
    ...gameInfoData,
    board: {
      activeWorkers: parseWorkerSummary(gameInfoData.board.activeWorkers),
      deadWorkers: parseWorkerSummary(gameInfoData.board.deadWorkers),
      discards: { cardCount: gameInfoData.board.discards.cards.totalCount },
      draw: { cardCount: gameInfoData.board.draw.cards.totalCount },
      pendingWorkers: parseWorkerSummary(gameInfoData.board.pendingWorkers),
    },
  }
}
