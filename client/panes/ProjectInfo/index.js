import {
  mkContainer as mkProjectInfoContainer,
  shape as projectInfoShape,
} from 'concerns/projectInfo'
import cx from 'classnames'
import ProjectCard from 'panes/ProjectCard'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './styles.module.css'
import WorkerBar from 'components/Worker/Bar'

const ProjectInfoPane = ({ className, projectInfo }) => {
  console.log('ProjectInfoPane', projectInfo)
  const { orientation, bar, projects } = projectInfo.board
  console.log('ProjectInfoPane -> projects', projects)
  const projectCards = projects.map(({ id, slug }) => (
    <ProjectCard
      className={styles[slug]}
      key={`project-card-${id}`}
      projectId={id}
    />
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
