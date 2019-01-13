import cx from 'classnames'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './styles.module.css'

const Messages = ({className}) => (
  <div className={cx(className, styles.Messages)}>
    <ul>
      <li>Welcome to the Game</li>
    </ul>
  </div>
)

Messages.propTypes = {
  className: PropTypes.string,
}

export default Messages
