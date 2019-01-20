import cx from 'classnames'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './styles.module.css'
import { workerShape } from 'concerns/worker'

const workerIcons = {
  met: 'user-check',
  unmet: 'user',
}

const Worker = ({
  asRequired,
  className,
  isSummary,
  size,
  worker: { slug, total, isMet },
}) => (
  <figure
    className={cx(
      className,
      styles.Worker,
      styles[slug],
      styles[asRequired && isMet],
    )}
  >
    <FontAwesomeIcon icon={workerIcons[isMet] || 'user'} size={size} />
    {isSummary && <span className={styles.counter}>{total}</span>}
  </figure>
)

Worker.propTypes = {
  asRequired: PropTypes.bool,
  className: PropTypes.string,
  isSummary: PropTypes.bool,
  size: PropTypes.string,
  worker: workerShape.isRequired,
}

export default Worker
