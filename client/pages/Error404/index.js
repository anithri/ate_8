import PropTypes from 'prop-types'
import cx from 'classnames'
import { Link } from 'react-router-dom'
import React from 'react'
import styles from './styles.module.css'

class Error404Page extends React.Component {
  render() {
    const { children, className } = this.props
    return (
      <main className={cx(className, styles.Error404Page)}>
        <header>
          <h1>Error404 Page</h1>
        </header>
        <nav className="flexRow flexCenter">
          <ul>
            <li>
              <Link to="/">Home</Link>
            </li>
          </ul>
        </nav>
      </main>
    )
  }
}

Error404Page.propTypes = {
  children: PropTypes.node,
  className: PropTypes.string,
}

export default Error404Page
