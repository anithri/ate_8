import cx from 'classnames'
import PlayerContainer from 'concerns/Player/container'
import { playerShape } from 'concerns/Player/shape'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './styles.module.css'
import WorkerBar from 'components/Worker/Bar'

const PlayerPane = ({ className, player }) => {
  // console.log('PlayerPane', player)
  return (
    <article className={cx(className, styles.player)}>
      <header>
        <span>{player.order}</span>
        <h2>{player.name}</h2>
      </header>
      <WorkerBar workers={player.workers} className={styles.workerBar} />
      <section className={styles.info}>um</section>
    </article>
  )
}

PlayerPane.propTypes = {
  className: PropTypes.string,
  player: playerShape.isRequired,
}

export default PlayerContainer(PlayerPane)
