import { listShape as playersShape } from 'concerns/boardTile'
import PropTypes from 'prop-types'
import { workerShape } from 'concerns/worker/shape'

export const shape = PropTypes.shape({
  id: PropTypes.string.isRequired,
  name: PropTypes.string.isRequired,
  players: playersShape.isRequired,
  workerTypes: PropTypes.arrayOf(workerShape),
})
