import cx from 'classnames'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './styles.module.css'
import { workerShape } from 'concerns/worker'

const Counter = ({ count }) => {
  if (count || count === 0)
    return <span className={styles.counter}>{count}</span>

  return null
}

const Worker = ({ className, count, worker }) => (
  <figure className={cx(className, styles.Worker, styles[worker.slug])}>
    <FontAwesomeIcon icon="user" />
    <Counter count={count} />
  </figure>
)

Worker.propTypes = {
  className: PropTypes.string,
  count: PropTypes.number,
  worker: workerShape,
  wrapper: PropTypes.node,
}
Counter.propTypes = {
  count: PropTypes.number,
}

export default Worker
