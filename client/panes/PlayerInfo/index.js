import cx from 'classnames'
import { gameShape } from 'concerns/game/shape'
import Player from './Player'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './styles.module.css'

const PlayerInfoPane = ({ className, game }) => {
  const allPlayers = game.players.map(player => (
    <Player
      key={`player${player.id}-pane`}
      playerId={player.id}
      className={styles[player.id]}
    />
  ))
  return (
    <section className={cx(className, styles.pane)}>
      <div className={styles.messages}>
        <ul>
          <li>Welcome to the game</li>
        </ul>
      </div>
      {allPlayers}
    </section>
  )
}

PlayerInfoPane.propTypes = {
  className: PropTypes.string,
  game: gameShape.isRequired,
}

export default PlayerInfoPane
