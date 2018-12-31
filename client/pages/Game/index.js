import cx from 'classnames'
import GameContainer from 'concerns/Game/container'
import GameDisplay from 'components/GameDisplay'
import { gameShape } from 'concerns/Game/shape'
import MainHeader from 'components/MainHeader'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './Game.module.css'

const GamePage = ({ game, className }) => {
  return (
    <main className={cx(className, styles.GamePage)}>
      <MainHeader title={game.name} />
      <GameDisplay game={game} />
    </main>
  )
}

GamePage.propTypes = {
  className: PropTypes.string,
  game: gameShape.isRequired,
}

export default GameContainer(GamePage)
