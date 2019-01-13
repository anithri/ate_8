import cx from 'classnames'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './pane.module.css'
import {cardDeckContainer} from 'concerns/card'
const BagCardPane = ({ className }) => (
  <div className={cx(className, styles.bagCard)}>
    <h2>Component (styled) BagCard</h2>
  </div>
)

BagCardPane.propTypes = {
  className: PropTypes.string,
}

export default BagCardPane
