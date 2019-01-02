import cx from 'classnames'
import { playerShape } from 'concerns/Player/shape'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './styles.module.css'
import WorkerBar from 'components/Worker/Bar'

const PlayerPane = ({ className, player }) => {
  return (
    <article className={cx(className, styles.pane)}>
      <header>
        <span>{player.order}</span>
        <h2>{player.name}</h2>
      </header>
      <WorkerBar workers={player.workers} doSummary />
      <section className={styles.playerInfo}>um</section>
    </article>
  )
}

PlayerPane.propTypes = {
  className: PropTypes.string,
  player: playerShape.isRequired,
}

export default PlayerPane
