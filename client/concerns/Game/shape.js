import { playerListShape } from 'concerns/Player/shape'
import PropTypes from 'prop-types'
import { workerShape } from 'concerns/Worker/shape'

export const gameShape = PropTypes.shape({
  id: PropTypes.string.isRequired,
  name: PropTypes.string.isRequired,
  players: playerListShape.isRequired,
  workerTypes: PropTypes.arrayOf(workerShape),
})
