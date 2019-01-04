import cx from 'classnames'
// import { GameDataConsumer } from 'concerns/Game/context'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './styles.module.css'
import Worker from 'components/Worker'
import { workerShape } from 'concerns/Worker/shape'

const countedWorkers = (workers, workerTypes) => {
  // console.log('countedWorkers', workers, workerTypes)
  const final = workers.reduce((counter, worker) => {
    counter[worker.slug] = (counter[worker.slug] || 0) + 1
    return counter
  }, {})
  return workerTypes.map(workerType => {
    return {
      count: final[workerType.slug] || 0,
      worker: workerType,
    }
  })
}

const WorkerBar = ({
  className,
  isSummary,
  label: labelText,
  layout,
  workerTypes,
  workers,
}) => {
  const label = labelText ? (
    <li>
      <h3>{labelText}</h3>
    </li>
  ) : null

  const workerFigures = isSummary
    ? countedWorkers(workers, workerTypes).map(({ worker, count }, idx) => (
        <li key={`worker-summary-${idx}`}>
          <Worker worker={worker} count={count} />
        </li>
      ))
    : workers.map((worker, idx) => (
        <li key={`worker-${idx}`}>
          <Worker worker={worker} />
        </li>
      ))

  //<FamilyConsumer>{context => <p>{context}</p>}</FamilyConsumer>;
  return (
    <ul className={cx(className, styles.bar, styles[layout])}>
      {label}
      {workerFigures}
    </ul>
  )
}

WorkerBar.propTypes = {
  className: PropTypes.string,
  isSummary: PropTypes.bool,
  label: PropTypes.string,
  layout: PropTypes.string,
  workerTypes: PropTypes.arrayOf(workerShape),
  workers: PropTypes.arrayOf(workerShape),
}
WorkerBar.defaultProps = {
  isSummary: false,
  layout: 'spread',
}

export default WorkerBar
