import cx from 'classnames'
import { gameShape } from 'concerns/game'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './styles.module.css'
import StartGame from 'inputs/StartGame'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'

const Message = ({ body, icon, theme }) => (
  <li className={styles[theme]}>
    <FontAwesomeIcon icon={icon} />
    {body}
  </li>
)

const Messages = ({ className, game }) => {
  const messages = game.messages.map((message, idx) => (
    <Message {...message} key={`project-message-${message.id}`} />
  ))
  return (
    <section className={cx(className, styles.messages)}>
      <ul>
        {game.currentState === 'ready_to_start' && (
          <li>
            <StartGame gameId={game.id} />
          </li>
        )}
        {messages}
      </ul>
    </section>
  )
}

Messages.propTypes = {
  className: PropTypes.string,
  game: gameShape.isRequired,
  children: PropTypes.node,
}

export default Messages
