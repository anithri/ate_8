import cx from 'classnames'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './styles.module.css'

const ProjectInfoCard = ({ className, id, slug }) => (
  <div className={cx(className, styles[slug])} key={`project-card-${id}`}>
    {slug}
  </div>
)

ProjectInfoCard.propTypes = {
  className: PropTypes.string,
  id: PropTypes.string.isRequired,
  slug: PropTypes.string.isRequired,
}

export default ProjectInfoCard
