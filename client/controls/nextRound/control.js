import PropTypes from 'prop-types'
import { NEXT_ROUND } from './mutation'
import { createClickControl, mutationById } from 'controls/base'

export const NextRoundControl = args =>
  createClickControl({
    displayName: 'NextRoundControl',
    mutation: NEXT_ROUND,
    preMutation: mutationById('gameId'),
    propTypes: {
      gameId: PropTypes.string.isRequired,
    },

    ...args,
  })
