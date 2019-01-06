import cx from 'classnames'
import { shape as gameShape } from 'concerns/game'
import Player from 'panes/PlayerCard'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './styles.module.css'

const PlayerInfoPane = ({ className, game }) => {
  // console.log('PlayerInfoPane', game)
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
