import cx from 'classnames'
import GameContainer from 'concerns/Game/container'
import { gameShape } from 'concerns/Game/shape'
import grid from './grid.module.css'
import Info from './Info'
import Players from './Players'
import Projects from './Projects'
import PropTypes from 'prop-types'
import React from 'react'
import regions from './regions.module.css'
import styles from './game.module.css'

const GamePage = ({ game, className }) => {
  return (
    <main className={cx(className, styles.game, grid.game)}>
      <Info className={regions.info} game={game} />
      <Players className={regions.players} game={game} />
      <Projects className={regions.projects} game={game} />
    </main>
  )
}

GamePage.propTypes = {
  className: PropTypes.string,
  game: gameShape.isRequired,
}

export default GameContainer(GamePage)
