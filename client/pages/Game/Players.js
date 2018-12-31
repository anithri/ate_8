import cx from 'classnames'
import grid from './grid.module.css'
import Player from './Player'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './game.module.css'
import regions from './regions.module.css'

const GamePlayers = ({ className, players }) => {
  const allPlayers = players.map(player => (
    <Player key={player.id} player={player} className={regions[player.id]}/>
  ))
  return (
    <div className={cx(className, styles.players, grid.players)}>
      <div className={regions.messages}>messages</div>
      {allPlayers}
    </div>
  )
}
GamePlayers.propTypes = {
  className: PropTypes.string,
}

export default GamePlayers
