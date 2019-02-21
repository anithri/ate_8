export const parseWorker = workerData => ({
  ...workerData,
  isMet: workerData.isMet ? 'met' : 'unmet',
})
