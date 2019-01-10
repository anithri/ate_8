import { GameInfoContainer, gameInfoShape } from 'concerns/gameInfo'
import cx from 'classnames'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import { Link } from 'react-router-dom'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './styles.module.css'
import WorkerBar from 'components/Worker/Bar'

const GameInfoPane = ({ className, gameInfo }) => {
  console.log(gameInfo.board)
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
        key={'gameInfo-activeWorkers'}
        label={'Active'}
        workers={gameInfo.board.activeWorkers}
        className={styles.activeWorkers}
        isSummary={true}
      />
      <WorkerBar
        key={'gameInfo-pendingWorkers'}
        label={'Pending'}
        workers={gameInfo.board.pendingWorkers}
        className={styles.pendingWorkers}
        isSummary={true}
      />
      <WorkerBar
        key={'gameInfo-deadWorkers'}
        label={'Dead'}
        workers={gameInfo.board.deadWorkers}
        className={styles.deadWorkers}
        isSummary={true}
      />

      <div className={styles.drawDeck}>Draw Deck: {}</div>
      <div className={styles.discardsDeck}>DiscardDeck</div>
    </section>
  )
}

GameInfoPane.propTypes = {
  className: PropTypes.string,
  gameInfo: gameInfoShape,
}

export default GameInfoContainer(GameInfoPane)
