import { parseBoardSpaceList } from 'concerns/boardSpace'
import { parsePlayerList } from 'concerns/player'

export const parseGame = data => {
  return {
    ...data,
    orientation: data.board.orientation,
    draftBar: data.board.draftBar,
    drawBag: data.board.drawBag,
    players: parsePlayerList(data.players),
    projects: parseBoardSpaceList(data.board.projects),
  }
}
