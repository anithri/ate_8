import cx from 'classnames'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './Worker.module.css'
import { workerShape } from 'concerns/Worker/shape'

const Worker = ({ className, worker, wrapper: Wrapper = 'span' }) => (
  <Wrapper className={cx(className, styles.Worker, styles[worker.slug])}>
    <FontAwesomeIcon icon="user" />
  </Wrapper>
)

Worker.propTypes = {
  className: PropTypes.string,
  worker: workerShape,
  wrapper: PropTypes.node,
}

export default Worker
