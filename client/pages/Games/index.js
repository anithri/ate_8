import { GameListContainer, gameListShape } from 'concerns/game'
import Button from 'components/Button'
import cx from 'classnames'
import GameList from './List'
import MainHeader from 'components/MainHeader'
import PropTypes from 'prop-types'
import React from 'react'
import { SetupTableControl } from 'controls/setupTable'
import styles from './styles.module.css'

const CreateTable = SetupTableControl(Button)

const GamesPage = ({ className, games }) => {
  return (
    <main className={cx(className, styles.GamesPage)}>
      <MainHeader title="Games" />
      <CreateTable label="Create New Table" />
      <GameList games={games} className={styles.GameList} />
    </main>
  )
}

GamesPage.propTypes = {
  className: PropTypes.string,
  games: gameListShape,
}

export default GameListContainer(GamesPage)
