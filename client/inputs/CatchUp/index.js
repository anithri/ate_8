import { GameListContainer } from 'concerns/game'
import { Redirect } from 'react-router-dom'
import React from 'react'

export const GameCatchUp = ({ game: { id, gameState } }) => (
  <Redirect to={`/games/${id}/${gameState}`} />
)

GameCatchUp.propTypes = {
  game: PropTypes.shape({
    id: PropTypes.string.isRequired,
    gameState: PropTypes.string.isRequired,
  }).isRequired,
}

export default GameListContainer(GameCatchUp)
