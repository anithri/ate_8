import cx from 'classnames'
import WorkerBar from 'components/Worker/Bar'
import ProjectInfoContainer from 'concerns/ProjectInfo/container'
import { projectInfoShape } from 'concerns/ProjectInfo/shape'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './styles.module.css'

const ProjectInfoPane = ({ className, projectInfo }) => {
  const { id } = projectInfo
  const { orientation, bar } = projectInfo.board

  return (
    <section className={cx(className, styles.pane, styles[orientation])}>
      <WorkerBar
        className={styles.barBag}
        label={'Draft Bar'}
        layout={'stack'}
        {...bar}
      />

      <div className={styles.project1}>project1</div>
      <div className={styles.project2}>project2</div>
      <div className={styles.project3}>project3</div>
      <div className={styles.project4}>project4</div>
      <div className={styles.project5}>project5</div>
      <div className={styles.project6}>project6</div>
      <div className={styles.project7}>project7</div>
      <div className={styles.project8}>project8</div>
      <div className={styles.project9}>project9</div>
      <div className={styles.project10}>project10</div>
      <div className={styles.project11}>project11</div>
      <div className={styles.project12}>project12</div>
      <div className={styles.project13}>project13</div>
      <div className={styles.project14}>project14</div>
      <div className={styles.project15}>project15</div>
      <div className={styles.project16}>project16</div>
    </section>
  )
}

ProjectInfoPane.propTypes = {
  className: PropTypes.string,
  projectInfo: projectInfoShape,
}

export default ProjectInfoContainer(ProjectInfoPane)
