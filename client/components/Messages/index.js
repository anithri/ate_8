import cx from 'classnames'
import { gameShape } from 'concerns/game'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './styles.module.css'
import StartGame from 'inputs/StartGame'

const Messages = ({ className, game }) => (
  <div className={cx(className, styles.messages)}>
    {game.currentState === 'ready_to_start' && <StartGame gameId={game.id} />}
  </div>
)

Messages.propTypes = {
  className: PropTypes.string,
  game: gameShape.isRequired,
  children: PropTypes.node,
}

export default Messages
