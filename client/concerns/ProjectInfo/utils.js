import { normalizeWorkers } from 'concerns/Worker/utils'

const allOrientations = ['north', 'east', 'south', 'west']

const randomOrientation = () =>
  allOrientations[Math.floor(Math.random() * allOrientations.length)]

export const normalizeProjectInfo = projectInfoData => {
  return {
    ...projectInfoData,
    board: {
      bar: {
        workers: normalizeWorkers(projectInfoData.board.bar.workers),
      },
      orientation: randomOrientation(),
    },
  }
}
