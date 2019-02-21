import PropTypes from 'prop-types'
import { START_GAME } from './mutation'
import { createClickControl, mutationById } from 'controls/base'

export const StartGameControl = args =>
  createClickControl({
    displayName: 'StartGameControl',
    mutation: START_GAME,
    preMutation: mutationById('gameId'),
    propTypes: {
      gameId: PropTypes.string.isRequired,
    },

    ...args,
  })
