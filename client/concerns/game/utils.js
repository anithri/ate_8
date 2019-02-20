import { parseBoardSpaceList } from 'concerns/boardSpace'
import { parsePlayerList } from 'concerns/player'

export const parseGame = ({ game }) => {
  return {
    ...game,
    orientation: game.board.orientation,
    draftBar: game.board.draftBar,
    drawBag: game.board.drawBag,
    players: parsePlayerList(game.players),
    projects: parseBoardSpaceList(game.board.projects),
  }
}
