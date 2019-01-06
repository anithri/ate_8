export const parseList = data => {
  return data.all.map(({ boardLocation }) => boardLocation)
}
