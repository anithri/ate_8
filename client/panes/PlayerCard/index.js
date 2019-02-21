import { PlayerContainer, playerShape } from 'concerns/player'
import cx from 'classnames'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './styles.module.css'
import WorkerBar from 'components/Worker/Bar'

const PlayerCard = ({ className, player }) => {
  const { myTurn, name, order, requiredWorkers, score } = player
  return (
    <article
      className={cx(className, styles.pane, myTurn && styles.currentPlayer)}
    >
      <header>
        <h2>
          {order}. {name}
        </h2>
      </header>
      <WorkerBar
        workers={requiredWorkers}
        className={styles.workerBar}
        layout="spread"
      >
        <figure className={styles.info}>{score}</figure>
      </WorkerBar>
    </article>
  )
}

PlayerCard.propTypes = {
  className: PropTypes.string,
  player: playerShape,
}

export default PlayerContainer({ Display: PlayerCard })
