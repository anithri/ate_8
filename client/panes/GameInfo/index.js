import cx from 'classnames'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import GameInfoContainer from 'concerns/gameInfo/container'
import { gameInfoShape } from 'concerns/gameInfo/shape'
import { Link } from 'react-router-dom'
import PropTypes from 'prop-types'
import React from 'react'
import WorkerBar from '../../components/Worker/Bar'
import styles from './styles.module.css'

const GameInfoPane = ({ className, gameInfo }) => {
  // console.log('GameInfoPane', gameInfo)
  return (
    <section className={cx(className, styles.pane)}>
      <header className={cx(styles.title, styles.title)}>
        <h1>{gameInfo.name}</h1>
        <nav>
          <Link to="/">
            <FontAwesomeIcon icon="home" size="lg" />
          </Link>
        </nav>
      </header>
      <WorkerBar
        label={'Active'}
        workers={gameInfo.board.activeWorkers}
        workerTypes={gameInfo.workerTypes}
        className={styles.activeWorkers}
        isSummary={true}
      />
      <WorkerBar
        label={'Pending'}
        workers={gameInfo.board.pendingWorkers}
        workerTypes={gameInfo.workerTypes}
        className={styles.pendingWorkers}
        isSummary={true}
      />
      <WorkerBar
        label={'Dead'}
        workers={gameInfo.board.deadWorkers}
        workerTypes={gameInfo.workerTypes}
        className={styles.deadWorkers}
        isSummary={true}
      />

      <div className={styles.drawDeck}>Draw Deck</div>
      <div className={styles.discardsDeck}>DiscardDeck</div>
    </section>
  )
}

GameInfoPane.propTypes = {
  className: PropTypes.string,
  gameInfo: gameInfoShape,
}

export default GameInfoContainer(GameInfoPane)
