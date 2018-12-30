import cx from 'classnames'
import { Link } from 'react-router-dom'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './Game.module.css'

class GamePage extends React.Component {
  render() {
    const { match, className } = this.props

    return (
      <main className={cx(className, styles.GamePage)}>
        <header>
          <h1>Game Page - {match.params.gameId}</h1>
        </header>
        <nav className="centeringFlex">
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

GamePage.propTypes = {
  children: PropTypes.node,
  className: PropTypes.string,
  match: PropTypes.shape({
    params: PropTypes.shape({
      gameId: PropTypes.string.isRequired,
    }),
  }),
}

export default GamePage
