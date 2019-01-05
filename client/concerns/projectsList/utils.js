export const normalizeProjectsList = list => {
  return list.all.map(data => data.project)
}

export default normalizeProjectsList
