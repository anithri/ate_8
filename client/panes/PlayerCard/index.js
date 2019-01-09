import {
  mkContainer as mkPlayerContainer,
  shape as playerShape,
} from 'concerns/player'
import cx from 'classnames'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './styles.module.css'
import WorkerBar from 'components/Worker/Bar'

const PlayerCard = ({ className, player }) => {
  // console.log('PlayerCard', player)
  return (
    <article className={cx(className, styles.pane)}>
      <header>
        <span>{player.order}</span>
        <h2>{player.name}</h2>
      </header>
      <WorkerBar
        workers={player.requiredWorkers}
        className={styles.workerBar}
      />
      <section className={styles.info}>um</section>
    </article>
  )
}

PlayerCard.propTypes = {
  className: PropTypes.string,
  player: playerShape.isRequired,
}

export default mkPlayerContainer(PlayerCard)
