export const parseList = data => {
  return data.all.map(({ player }) => player)
}
