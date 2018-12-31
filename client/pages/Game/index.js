import cx from 'classnames'
import GameContainer from 'concerns/Game/container'
import GameDisplay from 'components/GameDisplay'
import { Link } from 'react-router-dom'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './Game.module.css'

class GamePage extends React.Component {
  render() {
    const {
      match: {
        params: { gameId },
      },
      className,
    } = this.props

    return (
      <main className={cx(className, styles.GamePage)}>
        <header className="spreadFlex">
          <h1>Game Page</h1>
          <nav className="centeringFlex">
            <ul>
              <li>
                <Link to="/">Home</Link>
              </li>
              <li>
                <Link to="/games">Games</Link>
              </li>
            </ul>
          </nav>
        </header>
        <GameContainer gameId={gameId} display={GameDisplay} />
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
