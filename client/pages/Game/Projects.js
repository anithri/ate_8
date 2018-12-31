import cx from 'classnames'
import grid from './grid.module.css'
import PropTypes from 'prop-types'
import React from 'react'
import regions from './regions.module.css'
import styles from './game.module.css'

const GameProjects = ({ className }) => (
  <div className={cx(className, grid.projects, styles.projects)}>
    <div className={regions.barBag}>bar_bag</div>
    <div className={regions.project1}>project1</div>
    <div className={regions.project2}>project2</div>
    <div className={regions.project3}>project3</div>
    <div className={regions.project4}>project4</div>
    <div className={regions.project5}>project5</div>
    <div className={regions.project6}>project6</div>
    <div className={regions.project7}>project7</div>
    <div className={regions.project8}>project8</div>
    <div className={regions.project9}>project9</div>
    <div className={regions.project10}>project10</div>
    <div className={regions.project11}>project11</div>
    <div className={regions.project12}>project12</div>
    <div className={regions.project13}>project13</div>
    <div className={regions.project14}>project14</div>
    <div className={regions.project15}>project15</div>
    <div className={regions.project16}>project16</div>
  </div>
)

GameProjects.propTypes = {
  className: PropTypes.string,
}

export default GameProjects
