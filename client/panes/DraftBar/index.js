import { WorkerBagContainer, workerBagShape } from 'concerns/worker'
import cx from 'classnames'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './pane.module.css'
import WorkerBar from 'components/Worker/Bar'

const DraftBarPane = ({ className, bag }) => {
  console.log('DraftBarPane', bag)
  return (
    <React.Fragment>
      <WorkerBar
        className={cx(className, styles.draftBar)}
        label={'Draft Bar'}
        layout={'centeringFlex'}
        {...bag}
      />
    </React.Fragment>
  )
}

DraftBarPane.propTypes = {
  bag: workerBagShape,
  className: PropTypes.string,
}

export default WorkerBagContainer(DraftBarPane)
