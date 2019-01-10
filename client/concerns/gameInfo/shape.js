import PropTypes from 'prop-types'
import { workerSummaryShape } from 'concerns/worker'

export const gameInfoShape = PropTypes.shape({
  board: PropTypes.shape({
    activeWorkers: workerSummaryShape,
    deadWorkers: workerSummaryShape,
    discards: PropTypes.shape({
      cardCount: PropTypes.number,
    }),
    draw: PropTypes.shape({
      cardCount: PropTypes.number,
    }),
    pendingWorkers: workerSummaryShape,
  }),
  id: PropTypes.string.isRequired,
  name: PropTypes.string.isRequired,
})
