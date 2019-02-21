import { boardSpaceListShape } from 'concerns/boardSpace'
import { playerListShape } from 'concerns/player'
import PropTypes from 'prop-types'

export const gameShape = PropTypes.shape({
  gameState: PropTypes.string.isRequired,
  draftBar: PropTypes.shape({
    id: PropTypes.string.isRequired,
    slug: PropTypes.string.isRequired,
  }).isRequired,
  drawBag: PropTypes.shape({
    id: PropTypes.string.isRequired,
    slug: PropTypes.string.isRequired,
  }).isRequired,
  id: PropTypes.string.isRequired,
  name: PropTypes.string.isRequired,
  orientation: PropTypes.string.isRequired,
  players: playerListShape,
  projects: boardSpaceListShape,
  round: PropTypes.number.isRequired,
  turn: PropTypes.number.isRequired,
  messages: PropTypes.arrayOf(
    PropTypes.shape({
      body: PropTypes.string.isRequired,
      icon: PropTypes.string.isRequired,
      theme: PropTypes.string.isRequired,
    }).isRequired,
  ).isRequired,
})
