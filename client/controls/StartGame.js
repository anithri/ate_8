import cx from 'classnames'
import { gameShape } from 'concerns/game'
import PropTypes from 'prop-types'
import React from 'react'

const StartGameControl = ({ className, game }) => {
  return (
    <div className={cx(className, styles.StartGameControl)}>
      <h2>Current State: {game.state}</h2>
      <button>Start Game</button>
    </div>
  )
}

StartGameControl.propTypes = {
  className: PropTypes.string,
  game: gameShape.isRequired,
}

export default StartGameControl
