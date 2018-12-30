import cx from 'classnames'
import { GameListShape } from 'concerns/GameList/shape'
import { Link } from 'react-router-dom'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './GameList.module.css'

const GameList = ({ className, games }) => {
  const rows = games.map(({ id, name, turns }, idx) => {
    return (
      <li key={id}>
        <Link to={`/games/${id}`}>
          {idx + 1}. {name}
        </Link>
      </li>
    )
  })
  return (
    <div className={cx(className, styles.GameList)}>
      <h2>Component (styled) GameList</h2>
      <ul>{rows}</ul>
    </div>
  )
}

GameList.propTypes = {
  className: PropTypes.string,
  games: GameListShape,
}

export default GameList
