import { ProjectContainer, projectShape } from 'concerns/project'
import cx from 'classnames'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './styles.module.css'
import WorkerBar from 'components/Worker/Bar'

const ProjectCard = ({ className, project }) => {
  console.log('ProjectCard', project.projectCard)
  const card = project.projectCard
  return (
    <article
      className={cx(className, styles.pane)}
      key={`project-card-${project.id}`}
    >
      <header>
        <h2>{card.name}</h2>
      </header>
      <section>Some notes</section>
      <WorkerBar workers={card.requiredWorkers} />
    </article>
  )
}

ProjectCard.propTypes = {
  className: PropTypes.string,
  project: projectShape,
}

export default ProjectContainer(ProjectCard)
