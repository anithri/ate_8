import cx from 'classnames'
import { Link } from 'react-router-dom'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './MainHeader.module.css'

const MainHeader = ({ className, title }) => (
  <header className={cx(className, styles.MainHeader, 'spreadFlex')}>
    <h1>{title}</h1>
    <nav>
      <ul className="centeringFlex">
        <li>
          <Link to="/">Home</Link>
        </li>
        <li>
          <Link to="/games">Games</Link>
        </li>
      </ul>
    </nav>
  </header>
)

MainHeader.propTypes = {
  className: PropTypes.string,
  title: PropTypes.string.isRequired,
}

export default MainHeader
