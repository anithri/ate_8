import { parseWorkerList } from '../list/utils'

export const parseWorkerBag = ({ bag }) => {
  return {
    ...bag,
    workers: parseWorkerList(bag.workers),
  }
}
