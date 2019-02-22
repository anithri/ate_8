import cx from 'classnames'
import { gameShape, messageShape } from 'concerns/game'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './styles.module.css'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import GameControls from './GameControls'

const Message = ({ body, icon, theme }) => (
  <li className={styles[theme]}>
    <FontAwesomeIcon icon={icon} />
    {body}
  </li>
)

Message.propTypes = messageShape

const Messages = ({ className, game }) => {
  const messages = game.messages.map((message, idx) => (
    <Message {...message} key={`project-message-${message.id}`} />
  ))
  return (
    <section className={cx(className, styles.messages)}>
      <ul>
        <GameControls game={game} />
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
