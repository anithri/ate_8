import { Mutation } from 'react-apollo'
import PropTypes from 'prop-types'
import React from 'react'
import { Redirect } from 'react-router-dom'
import { START_GAME } from './mutation'

export const StartGameControl = Display => {
  const startGameControl = props => {
    return (
      <Mutation
        mutation={START_GAME}
        onCompleted={({ startGame: { game } }) => (
          <Redirect to={`/games/${game.id}`} />
        )}
      >
        {(startGame, { data, error, loading }) => {
          if (loading) return <div>Loading...</div>
          if (error) return <div>Error: {error}</div>
          if (!data) return <Display {...props} control={startGame} />
          return <Redirect to={`/games/${data.startGame.game.id}`} />
        }}
      </Mutation>
    )
  }
  startGameControl.displayName = 'StartGameControl'
  startGameControl.propTypes = {
    className: PropTypes.string,
  }

  return startGameControl
}

//          <div>
//             <button onClick={e => {
//               e.preventDefault()
//               startGame()
//             }}
//             <form
//               onSubmit={e => {
//                 e.preventDefault();
//                 addTodo({ variables: { type: input.value } });
//                 input.value = "";
//               }}
//             >
//               <input
//                 ref={node => {
//                   input = node;
//                 }}
//               />
//               <button type="submit">Add Todo</button>
//             </form>
//           </div>
