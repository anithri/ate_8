import {
  shape as gameShape,
  mkContainer as mkGameContainer,
} from 'concerns/game'
import cx from 'classnames'
import { GameDataProvider } from 'concerns/game/context'
import GameInfo from 'panes/GameInfo'
import PlayerInfo from 'panes/PlayerInfo'
import ProjectInfo from 'panes/ProjectInfo'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './styles.module.css'

const GamePage = ({ game, className }) => {
  // console.log('GamePage', game)
  return (
    <GameDataProvider
      value={{ gameId: game.id, workerTypes: game.workerTypes }}
    >
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

export default mkGameContainer(GamePage)
