export const normalizeData = projectData => {
  return projectData.all.map(g => g.game)
}

export default normalizeData
