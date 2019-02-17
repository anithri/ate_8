import cx from 'classnames'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './QueryError.module.css'

const QueryError = ({className}) => (
  <div className={cx(className, styles.QueryError)}>
    <h2>Component (styled) QueryError</h2>
  </div>
)

QueryError.propTypes = {
  className: PropTypes.string,
}

export default QueryError
