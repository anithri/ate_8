import { parseWorkerList } from '../list/utils'

export const parseWorkerBag = ({ workerBag }) => {
  return {
    ...workerBag,
    workers: parseWorkerList(workerBag.workers),
  }
}
