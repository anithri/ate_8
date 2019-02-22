import { NextRoundControl } from 'controls/nextRound'
import Button from 'components/Button'
import React from 'react'
import PropTypes from 'prop-types'

export const NextRoundInput = props => (
  <Button {...props} label="Next Round" iconAfter="play" />
)

NextRoundInput.propTypes = {
  className: PropTypes.string,
  doClick: PropTypes.func,
}

export default NextRoundControl({ Input: NextRoundInput })
