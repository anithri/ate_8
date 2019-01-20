import cx from 'classnames'
import { Link } from 'react-router-dom'
import MainHeader from 'components/MainHeader'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './styles.module.css'

class HomePage extends React.Component {
  render() {
    const { className } = this.props
    return (
      <main className={cx(className, styles.homePage)}>
        <MainHeader title="Welcome!" />
        <nav className="pageNav">
          <ul>
            <li>
              <Link to="/games">Games</Link>
            </li>
            <li>
              <Link to="/Oops">Oops</Link>
            </li>
          </ul>
        </nav>
      </main>
    )
  }
}

HomePage.propTypes = {
  className: PropTypes.string,
}

export default HomePage
