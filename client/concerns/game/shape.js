import { playerListShape } from 'concerns/player/shape'
import PropTypes from 'prop-types'
import { workerShape } from 'concerns/worker/shape'

export const gameShape = PropTypes.shape({
  id: PropTypes.string.isRequired,
  name: PropTypes.string.isRequired,
  players: playerListShape.isRequired,
  workerTypes: PropTypes.arrayOf(workerShape),
})
