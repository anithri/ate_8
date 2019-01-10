import cx from 'classnames'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './styles.module.css'
import { workerSummaryShape } from 'concerns/worker'

const Worker = ({ className, isSummary, worker: { slug, total } }) => (
  <figure className={cx(className, styles.Worker, styles[slug])}>
    <FontAwesomeIcon icon="user" />
    {isSummary && <span className={styles.counter}>{total}</span>}
  </figure>
)

Worker.propTypes = {
  className: PropTypes.string,
  isSummary: PropTypes.bool,
  worker: workerSummaryShape.isRequired,
}

export default Worker
