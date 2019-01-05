import {
  listShape as gameListShape,
  mkListContainer as mkGameListContainer,
} from 'concerns/game'
import cx from 'classnames'
import GameList from './List'
import MainHeader from 'components/MainHeader'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './styles.module.css'

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

export default mkGameListContainer(GamesPage)
