import { createContainer } from '../container'
import { queryMatch, extractData } from '../utils'
import PropTypes from 'prop-types'
import cc from 'change-case'

export const createRouteContainer = args => {
  const { parser, concern, concernId } = args
  return createContainer({
    displayName: cc.pascal(concern) + 'Container',
    preQuery: queryMatch(concernId),
    postQuery: extractData(concern, parser),
    propTypes: {
      match: PropTypes.shape({
        params: PropTypes.shape({
          gameState: PropTypes.string,
          [concernId]: PropTypes.string.isRequired,
        }).isRequired,
      }).isRequired,
    },
    ...args,
  })
}

export const createRouteIdContainer = args => {
  const { concern, concernId } = args
  return createRouteContainer({
    concernId: concernId || `${concern}Id`,
    ...args,
  })
}
