import { playerListShape } from 'concerns/player'
import PropTypes from 'prop-types'
import { workerListShape } from 'concerns/worker'

export const gameShape = PropTypes.shape({
  id: PropTypes.string.isRequired,
  name: PropTypes.string.isRequired,
  players: playerListShape,
  workerTypes: workerListShape,
})
