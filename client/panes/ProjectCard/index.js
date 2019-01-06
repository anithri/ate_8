import cx from 'classnames'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './styles.module.css'

const ProjectCard = ({ id, slug }) => (
  <div className={styles[slug]} key={`project-card-${id}`}>
    Hiya
  </div>
)

ProjectCard.propTypes = {
  className: PropTypes.string,
  projectId: PropTypes.string.isRequired,
}

export default ProjectCard
