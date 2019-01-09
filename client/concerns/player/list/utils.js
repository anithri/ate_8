export const parsePlayerList = data => {
  return data.all.map(({ player }) => player)
}
