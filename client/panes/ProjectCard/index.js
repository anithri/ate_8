import { mkContainer, shape as projectShape } from 'concerns/boardTile'
import cx from 'classnames'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './styles.module.css'

const ProjectCard = ({ className, projectId }) => (
  <div className={cx(className, styles.wa)} key={`project-card-${locationId}`}>
    Hiya {projectId}
  </div>
)

ProjectCard.propTypes = {
  className: PropTypes.string,
  project: projectShape,
}

export default mkContainer(ProjectCard)
