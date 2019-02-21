import PropTypes from 'prop-types'
import React from 'react'
import { Route, Switch } from 'react-router-dom'
import StartGameInput from 'inputs/StartGame'

const GameControls = (props) => (
  <Switch>
    <Route
      exact
      path="/games/:gameId/ready_to_start"
      component={StartGameInput}
    />
    <Route
      exact
      path="/games/:gameId/start_of_game"
      component={StartGameInput}
    />
  </Switch>
)

GameControls.propTypes = {
  className: PropTypes.string,
}

export default GameControls
