import { createByIdContainer } from 'concerns/base'
import { GET_WORKER_BAG } from './query'
import { parseWorkerBag } from './utils'

export const WorkerBagContainer = args =>
  createByIdContainer({
    concern: 'workerBag',
    parser: parseWorkerBag,
    query: GET_WORKER_BAG,
    ...args,
  })
