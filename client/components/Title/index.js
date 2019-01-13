import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import cx from 'classnames'
import PropTypes from 'prop-types'
import React from 'react'
import { Link } from 'react-router-dom'
import styles from './styles.module.css'

const Title = ({className, name}) => (
  <header className={cx(className, styles.title)}>
    <h1>{name}</h1>
    <nav>
      <Link to="/">
        <FontAwesomeIcon icon="home" size="lg" />
      </Link>
    </nav>
  </header>
)

Title.propTypes = {
  className: PropTypes.string,
  name: PropTypes.string.isRequired,
}

export default Title
