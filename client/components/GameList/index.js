import cx from 'classnames'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './GameList.module.css'

const GameList = ({className}) => (
  <div className={cx(className, styles.GameList)}>
    <h2>Component (styled) GameList</h2>
  </div>
)

GameList.propTypes = {
  className: PropTypes.string,
}

export default GameList
