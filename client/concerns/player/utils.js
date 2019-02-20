import { parseWorkerList } from 'concerns/worker'

export const parsePlayer = ({ player }) => {
  return {
    ...player,
    requiredWorkers: parseWorkerList(player.requiredWorkers),
  }
}
