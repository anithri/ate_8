import cx from 'classnames'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './styles.module.css'

const Loading = ({className}) => (
  <div className={cx(className, styles.loading)}>
    <h6>Loading...</h6>
  </div>
)

Loading.propTypes = {
  className: PropTypes.string,
}

export default Loading
