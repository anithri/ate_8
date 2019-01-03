import cx from 'classnames'
import { GameDataConsumer } from 'concerns/Game/context'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './styles.module.css'
import Worker from 'components/Worker'
import { workerShape } from 'concerns/Worker/shape'

const countedWorkers = (workers, workerTypes) => {
  const final = workers.reduce((counter, worker) => {
    counter[worker.id] = (counter[worker.id] || 0) + 1
    return counter
  })
  return workerTypes.map(workerType => {
    return {
      count: final[workerType.id] || 0,
      worker: workerType,
    }
  })
}

const WorkerBar = ({ className, workers, doSummary, workerTypes, layout }) => {
  const workerFigures = doSummary
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
      {workerFigures}
    </ul>
  )
}

WorkerBar.propTypes = {
  className: PropTypes.string,
  doSummary: PropTypes.boolean,
  layout: PropTypes.string,
  workerTypes: PropTypes.arrayOf(workerShape),
  workers: PropTypes.arrayOf(workerShape),
}
WorkerBar.defaultProps = {
  doSummary: false,
  layout: 'spread',
}

export default WorkerBar
