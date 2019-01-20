export const parseWorker = workerData => ({
  ...workerData,
  isMet: workerData.isMet && Math.floor(Math.random() * 2) == 0 ? 'met' : 'unmet',
})
