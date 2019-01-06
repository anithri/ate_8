import {
  mkContainer as mkProjectInfoContainer,
  shape as projectInfoShape,
} from 'concerns/projectInfo'
import cx from 'classnames'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './styles.module.css'
import WorkerBar from 'components/Worker/Bar'

const ProjectInfoPane = ({ className, projectInfo }) => {
  console.log('ProjectInfoPane', projectInfo)
  const { orientation, bar, projects } = projectInfo.board
  const projectCards = projects.map((project, idx) => (
    <div
      className={styles[`project${idx + 1}`]}
      key={`project-card-${idx + 1}`}
    >
      Project {idx + 1}
    </div>
  ))

  return (
    <section className={cx(className, styles.pane, styles[orientation])}>
      <WorkerBar
        className={styles.barBag}
        label={'Draft Bar'}
        layout={'stack'}
        {...bar}
      />

      {projectCards}
    </section>
  )
}

ProjectInfoPane.propTypes = {
  className: PropTypes.string,
  projectInfo: projectInfoShape,
}

export default mkProjectInfoContainer(ProjectInfoPane)
