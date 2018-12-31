import cx from 'classnames'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './pane.module.css'
import { playerShape } from 'concerns/Player/shape'
import PlayerContainer from 'concerns/Player/container'

const PlayerPane = ({ className, player }) => (
  <div className={cx(className, styles.player)}>
    <h2>Component (styled) Player</h2>
  </div>
)

PlayerPane.propTypes = {
  className: PropTypes.string,
  player: playerShape,
}

export default PlayerContainer(PlayerPane)
