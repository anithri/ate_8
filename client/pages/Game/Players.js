import cx from 'classnames'
import grid from './grid.module.css'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './game.module.css'
import regions from './regions.module.css'

const GamePlayers = ({ className }) => (
  <div className={cx(className, styles.players, grid.players)}>
    <div className={regions.messages}>messages</div>
    <div className={regions.player1}>player1</div>
    <div className={regions.player2}>player2</div>
    <div className={regions.player3}>player3</div>
    <div className={regions.player4}>player4</div>
  </div>
)

GamePlayers.propTypes = {
  className: PropTypes.string,
}

export default GamePlayers
