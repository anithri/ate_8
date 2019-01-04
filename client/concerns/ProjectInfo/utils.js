import { normalizeWorkers } from 'concerns/Worker/utils'

export const normalizeProjectInfo = projectInfoData => {
  return {
    ...projectInfoData,
    board: {
      bar: {
        workers: normalizeWorkers(projectInfoData.board.bar.workers),
      },
    },
  }
}
