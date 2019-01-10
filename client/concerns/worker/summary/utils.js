import { parseWorker } from '../utils'

export const parseWorkerSummary = ({ all }) => {
  return all.map(({ worker }) => parseWorker(worker))
}
