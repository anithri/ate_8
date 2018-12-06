import cx from 'classnames'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './HeadwindMenu.module.css'

const HeadwindMenu = ({className}) => (
  <div className={cx(className, styles.HeadwindMenu)}>
    <h2>Component (styled) HeadwindMenu</h2>
  </div>
)

HeadwindMenu.propTypes = {
  className: PropTypes.string,
}

export default HeadwindMenu
