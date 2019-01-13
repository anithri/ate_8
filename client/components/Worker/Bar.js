import cx from 'classnames'
// import { GameDataConsumer } from 'concerns/Game/context'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './styles.module.css'
import Worker from 'components/Worker'
import { workerListShape } from 'concerns/worker'

const WorkerBar = ({
  className,
  children,
  isSummary,
  label: labelText,
  layout,
  size,
  workers,
}) => {
  const label = labelText ? (
    <li>
      <h3>{labelText}</h3>
    </li>
  ) : null

  const workerFigures = workers.map((worker, idx) => (
    <li key={`worker-summary-${idx}`}>
      <Worker worker={worker} isSummary={isSummary} size={size} />
    </li>
  ))

  //<FamilyConsumer>{context => <p>{context}</p>}</FamilyConsumer>;
  return (
    <ul className={cx(className, styles.bar, styles[layout])}>
      {label}
      {workerFigures}
      <li>{children}</li>
    </ul>
  )
}

WorkerBar.propTypes = {
  children: PropTypes.node,
  className: PropTypes.string,
  isSummary: PropTypes.bool,
  label: PropTypes.string,
  layout: PropTypes.string,
  size: PropTypes.string,
  workers: workerListShape,
}
WorkerBar.defaultProps = {
  isSummary: false,
  layout: 'spread',
  size: 'md',
}

export default WorkerBar
