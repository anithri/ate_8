import { normalizeWorkers } from 'concerns/worker/utils'
import { parseList as parseProjectsList } from 'concerns/boardLocation'

export const parseData = data => {
  return {
    ...data,
    board: {
      ...data.board,
      bar: {
        ...data.board.bar,
        workers: normalizeWorkers(data.board.bar.workers),
      },
      projects: parseProjectsList(data.board.projects),
    },
  }
}
