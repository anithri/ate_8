import { ProjectContainer, projectShape } from 'concerns/project'
import cx from 'classnames'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './styles.module.css'
import WorkerBar from 'components/Worker/Bar'

const ProjectCard = ({ className, project }) => {
  const { card } = project
  console.log('ProjectCard', project)
  return (
    <article
      className={cx(className, styles.pane)}
      key={`project-card-${card.id}`}
    >
      <header>
        <h2>{card.name}</h2>
      </header>
      <section>Some notes</section>
      <WorkerBar workers={project.workers} asRequired={true} />
    </article>
  )
}

ProjectCard.propTypes = {
  className: PropTypes.string,
  project: projectShape,
}

export default ProjectContainer({Display: ProjectCard})
