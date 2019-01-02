import cx from 'classnames'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './styles.module.css'
import { workerShape } from 'concerns/Worker/shape'

const Counter = ({ count }) => {
  if (count || count === 0)
    return <span className={styles.counter}>{count}</span>

  return null
}

const Worker = ({ className, count, worker, wrapper: Wrapper = 'span' }) => (
  <Wrapper
    className={cx(
      className,
      styles.Worker,
      styles[worker.slug],
      'fa-layers fa-fw',
    )}
  >
    <FontAwesomeIcon icon="user" />
    <Counter count={count} />
  </Wrapper>
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
