import { gameListShape } from 'concerns/game'
import { Link } from 'react-router-dom'
import PropTypes from 'prop-types'
import React from 'react'

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
    <div className={className}>
      <ul>{rows}</ul>
    </div>
  )
}

GameList.propTypes = {
  className: PropTypes.string,
  games: gameListShape,
}

export default GameList
