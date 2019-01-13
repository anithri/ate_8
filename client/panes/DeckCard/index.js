import cx from 'classnames'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './pane.module.css'

const DeckCardPane = ({ className }) => (
  <div className={cx(className, styles.deckCard)}>
    <h2>Component (styled) DeckCard</h2>
  </div>
)

DeckCardPane.propTypes = {
  className: PropTypes.string,
}

export default DeckCardPane
