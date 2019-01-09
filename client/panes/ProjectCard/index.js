import { boardSpaceContainer, boardSpaceShape } from 'concerns/boardSpace'
import cx from 'classnames'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './styles.module.css'
import WorkerBar from 'components/Worker/Bar'

const ProjectCard = ({ className, boardSpace: project }) => {
  const card = project.cards[0]
  console.log(project.cards)
  return (
    <article
      className={cx(className, styles.pane)}
      key={`project-card-${project.id}`}
    >
      <header>
        <h2>{project.name}</h2>
      </header>
      <section>Some notes</section>
      <WorkerBar workers={[]} />
    </article>
  )
}

ProjectCard.propTypes = {
  boardSpace: boardSpaceShape,
  className: PropTypes.string,
}

export default boardSpaceContainer(ProjectCard)
