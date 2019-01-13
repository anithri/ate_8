import React from 'react'
import styles from './styles.module.css'

const frameSlugs = ['north', 'east', 'south', 'west', 'nw', 'ne', 'se', 'sw']

const GameFrame = props => {
  const frames = frameSlugs.map(dir => (
    <div key={`emptyBar-${dir}`} className={styles[dir]} />
  ))
  return <React.Fragment>{frames}</React.Fragment>
}
export default GameFrame
