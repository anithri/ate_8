import cx from 'classnames'
import GameListDisplay from 'components/GameList'
import { Link } from 'react-router-dom'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './Games.module.css'

class GamesPage extends React.Component {
  render() {
    const { className } = this.props
    return (
      <main className={cx(className, styles.GamesPage)}>
        <header className="spreadFlex">
          <h1>Games Page</h1>
          <nav className="centeringFlex">
            <ul>
              <li>
                <Link to="/">Home</Link>
              </li>
            </ul>
          </nav>
        </header>
        <GameListDisplay className={styles.GameList} />
      </main>
    )
  }
}

GamesPage.propTypes = {
  children: PropTypes.node,
  className: PropTypes.string,
}

export default GamesPage
