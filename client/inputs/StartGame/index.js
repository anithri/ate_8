import { StartGameControl } from 'controls/startGame'
import Button from 'components/Button'
import React from 'react'
import PropTypes from 'prop-types'

export const StartGameInput = props => (
  <Button {...props} label="Start Game" iconAfter="play" />
)

StartGameInput.propTypes = {
  className: PropTypes.string,
  doClick: PropTypes.func,
}

export default StartGameControl({ Input: StartGameInput })
