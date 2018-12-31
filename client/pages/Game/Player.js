import cx from 'classnames'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './game.module.css'
import Worker from 'components/Worker'

const GamePlayer = ({ className, player }) => {
  const workers = player.workers.map(worker => (
    <Worker worker={worker} key={worker.id} wrapper="li" />
  ))

  return (
    <article className={cx(className, styles.player)}>
      <header>
        <span>{player.order}</span>
        <h2>{player.name}</h2>
      </header>
      <ul className={styles.playerWorkers}>{workers}</ul>
      <section className={styles.playerInfo}>um</section>
    </article>
  )
}

GamePlayer.propTypes = {
  className: PropTypes.string,
  player: PropTypes.string.isRequired,
}

export default GamePlayer
