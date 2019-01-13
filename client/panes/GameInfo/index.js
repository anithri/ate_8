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
    <React.Fragment>
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

      <div className={styles.drawDeck}>
        Draw Deck: {gameInfo.board.draw.cardCount}
      </div>
      <div className={styles.discardsDeck}>
        Discard Deck: {gameInfo.board.discards.cardCount}
      </div>
    </React.Fragment>
  )
}

GameInfoPane.propTypes = {
  className: PropTypes.string,
  gameInfo: gameInfoShape,
}

export default GameInfoContainer(GameInfoPane)
