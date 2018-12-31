import cx from 'classnames'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './Game.module.css'

const GameMessages = ({ className }) => (
  <div className={cx(className, styles.GameMessages)}>
    <h2>Component (styled) Messages</h2>
  </div>
)

GameMessages.propTypes = {
  className: PropTypes.string,
}

export default GameMessages
