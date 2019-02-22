import PropTypes from 'prop-types'
import { START_GAME } from './mutation'
import { createClickControl, mutationByMatch } from 'controls/base'

export const StartGameControl = args =>
  createClickControl({
    displayName: 'StartGameControl',
    mutation: START_GAME,
    preMutation: mutationByMatch('gameId'),
    propTypes: {
      gameId: PropTypes.string.isRequired,
    },

    ...args,
  })
