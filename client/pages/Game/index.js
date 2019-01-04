import cx from 'classnames'
import GameContainer from 'concerns/Game/container'
import { GameDataProvider } from 'concerns/Game/context'
import GameInfo from 'panes/GameInfo'
import { gameShape } from 'concerns/Game/shape'
import PlayerInfo from 'panes/PlayerInfo'
import ProjectInfo from 'panes/ProjectInfo'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './styles.module.css'

const GamePage = ({ game, className }) => {
  // console.log('GamePage', game)
  const { workerTypes } = game
  return (
    <GameDataProvider value={{ workerTypes: [] }}>
      <main className={cx(className, styles.page)}>
        <GameInfo className={styles.info} gameId={game.id} />
        <PlayerInfo className={styles.players} game={game} />
        <ProjectInfo className={styles.projects} gameId={game.id} />
      </main>
    </GameDataProvider>
  )
}

GamePage.propTypes = {
  className: PropTypes.string,
  game: gameShape.isRequired,
}

export default GameContainer(GamePage)
