import { playerListShape } from 'concerns/Player/shape'
import PropTypes from 'prop-types'

export const gameShape = PropTypes.shape({
  id: PropTypes.string.isRequired,
  name: PropTypes.string.isRequired,
  players: playerListShape,
})
