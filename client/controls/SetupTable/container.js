import { Mutation } from 'react-apollo'
import PropTypes from 'prop-types'
import React from 'react'
import { Redirect } from 'react-router-dom'
import { SETUP_TABLE } from './mutation'

export const SetupTableControl = Display => {
  const setupTableControl = props => {
    return (
      <Mutation
        mutation={SETUP_TABLE}
        onCompleted={({ setupTable: { game } }) => (
          <Redirect to={`/games/${game.id}`} />
        )}
      >
        {(setupTable, { data, error, loading }) => {
          if (loading) return <div>Loading...</div>
          if (error) return <div>Error: {error}</div>
          if (!data) return <Display {...props} control={setupTable} />
          return <Redirect to={`/games/${data.setupTable.game.id}`} />
        }}
      </Mutation>
    )
  }
  setupTableControl.displayName = 'SetupTableControl'
  setupTableControl.propTypes = {
    className: PropTypes.string,
  }

  return setupTableControl
}

//          <div>
//             <button onClick={e => {
//               e.preventDefault()
//               setupTable()
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
