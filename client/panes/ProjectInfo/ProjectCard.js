import cx from 'classnames'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './styles.module.css'

const ProjectInfoProjectCard = ({ id, slug }) => (
  <div className={styles[slug]} key={`project-card-${id}`}>
    {slug}
  </div>
)

ProjectInfoProjectCard.propTypes = {
  className: PropTypes.string,
}

export default ProjectInfoProjectCard
