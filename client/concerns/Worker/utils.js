export const normalizeData = workerData => {
  return workerData.all.map(g => g.game)
}

export default normalizeData
