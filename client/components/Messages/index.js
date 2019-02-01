import cx from 'classnames'
import { gameShape } from 'concerns/game'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './styles.module.css'
import StartGameControl from 'controls/StartGame'

const Messages = ({ className, game }) => (
  <div className={cx(className, styles.messages)}>
    {game.currentState === 'new' && <StartGameControl />}
  </div>
)

Messages.propTypes = {
  className: PropTypes.string,
  game: gameShape.isRequired,
  children: PropTypes.node,
}

export default Messages
