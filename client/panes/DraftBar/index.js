import { WorkerBagContainer, workerBagShape } from 'concerns/worker'
import cx from 'classnames'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './pane.module.css'
import WorkerBar from 'components/Worker/Bar'

const DraftBarPane = ({ className, workerBag }) => {
  console.log('DraftBarPane', workerBag)
  return (
    <React.Fragment>
      <WorkerBar
        className={cx(className, styles.draftBar)}
        label={'Draft Bar'}
        layout={'spread'}
        size={'lg'}
        {...workerBag}
      />
    </React.Fragment>
  )
}

DraftBarPane.propTypes = {
  workerBag: workerBagShape,
  className: PropTypes.string,
}

export default WorkerBagContainer({ Display: DraftBarPane })
