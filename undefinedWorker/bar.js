import cx from 'classnames'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './styled.module.css'

const WorkerBar = ({ className }) => (
  <div className={cx(className, styles.Bar)}>
    <h2>Component (styled) Bar</h2>
  </div>
)

WorkerBar.propTypes = {
  className: PropTypes.string,
}

export default WorkerBar
