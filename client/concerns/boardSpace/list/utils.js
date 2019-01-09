export const parseList = boardSpacesData => {
  console.log(boardSpacesData)
  return boardSpacesData.all.map(bs => bs.boardSpace)
}
