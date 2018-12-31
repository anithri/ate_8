import cx from 'classnames'
import { gameShape } from 'concerns/Game/shape'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './GameDisplay.module.css'

const GameDisplay = ({ className, game }) => (
  <div className={cx(className, styles.GameDisplay)}>
    <h2>{game.name}</h2>
  </div>
)

GameDisplay.propTypes = {
  className: PropTypes.string,
  game: gameShape,
}

export default GameDisplay
