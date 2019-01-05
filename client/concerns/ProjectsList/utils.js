export const normalizeData = projectsListData => {
  return projectsListData.all.map(g => g.game)
}

export default normalizeData
