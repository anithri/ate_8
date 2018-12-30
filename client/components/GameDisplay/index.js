import cx from 'classnames'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './GameDisplay.module.css'

const GameDisplay = ({className}) => (
  <div className={cx(className, styles.GameDisplay)}>
    <h2>Component (styled) GameDisplay</h2>
  </div>
)

GameDisplay.propTypes = {
  className: PropTypes.string,
}

export default GameDisplay
