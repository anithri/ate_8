import { normalizeWorkers } from 'concerns/Worker/utils'

export const normalizeProjectInfo = projectInfoData => {
  return {
    ...projectInfoData,
    board: {
      ...projectInfoData.board,
      bar: {
        ...projectInfoData.board.bar,
        workers: normalizeWorkers(projectInfoData.board.bar.workers),
      },
    },
  }
}
