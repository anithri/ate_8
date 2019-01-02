import cx from 'classnames'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './styles.module.css'
import { workerShape } from 'concerns/Worker/shape'

const WorkerBar = ({ className }) => (
  <div className={cx(className, styles.bar)}>
    <h2>Component (styled) Bar</h2>
  </div>
)

WorkerBar.propTypes = {
  className: PropTypes.string,
  workers: PropTypes.array(workerShape),
},

export default WorkerBar

