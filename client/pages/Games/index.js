import cx from 'classnames'
import GameList from './List'
import GameListContainer from 'concerns/GameList/container'
import { gameListShape } from 'concerns/GameList/shape'
import MainHeader from 'components/MainHeader'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './Games.module.css'

const GamesPage = ({ className, games }) => (
  <main className={cx(className, styles.GamesPage)}>
    <MainHeader title="Games" />
    <GameList games={games} className={styles.GameList} />
  </main>
)

GamesPage.propTypes = {
  className: PropTypes.string,
  games: gameListShape,
}

export default GameListContainer(GamesPage)
