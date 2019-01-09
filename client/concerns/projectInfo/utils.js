import { parseBoardSpaceList } from 'concerns/boardSpace'
import { parseWorkerList } from 'concerns/worker'

export const parseProjectInfo = data => {
  return {
    ...data,
    board: {
      ...data.board,
      bar: {
        ...data.board.bar,
        workers: parseWorkerList(data.board.bar.workers),
      },
      projects: parseBoardSpaceList(data.board.projects),
    },
  }
}
