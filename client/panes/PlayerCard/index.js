import { PlayerContainer, playerShape } from 'concerns/player'
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
        <h2>{player.order}. {player.name}</h2>
      </header>
      <WorkerBar
        workers={player.requiredWorkers}
        className={styles.workerBar}
        layout="spread"
      >
        <figure className={styles.info}>{player.score}</figure>
      </WorkerBar>
    </article>
  )
}

PlayerCard.propTypes = {
  className: PropTypes.string,
  player: playerShape,
}

export default PlayerContainer({Display: PlayerCard})
