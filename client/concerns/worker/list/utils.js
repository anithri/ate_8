import { parseWorker } from '../utils'

export const parseWorkerList = ({ all }) => {
  return all.map(({ worker }) => parseWorker(worker))
}
