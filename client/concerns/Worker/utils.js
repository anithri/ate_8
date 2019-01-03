export const normalizeWorkers = workerData => {
  return workerData.all.map(({ worker }) => worker)
}

export const normalizeWorker = workerData => workerData
