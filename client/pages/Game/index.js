import cx from 'classnames'
import GameContainer from 'concerns/Game/container'
import { GameDataProvider } from 'concerns/Game/context'
import GameInfo from 'panes/GameInfo'
import { gameShape } from 'concerns/Game/shape'
import grid from './grid.module.css'
import PlayerInfo from 'panes/PlayerInfo'
import Projects from './Projects'
import PropTypes from 'prop-types'
import React from 'react'
import regions from './regions.module.css'
import styles from './styles.module.css'

const GamePage = ({ game, className }) => {
  console.log('GamePage', game)
  const { workerTypes } = game
  return (
    <GameDataProvider value={{ workerTypes: [] }}>
      <main className={cx(className, styles.game, grid.game)}>
        <GameInfo className={regions.info} gameId={game.id} />
        <PlayerInfo className={regions.players} game={game} />
        <Projects className={regions.projects} game={game} />
      </main>
    </GameDataProvider>
  )
}

GamePage.propTypes = {
  className: PropTypes.string,
  game: gameShape.isRequired,
}

export default GameContainer(GamePage)
