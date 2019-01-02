import cx from 'classnames'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import { gameShape } from 'concerns/Game/shape'
import { Link } from 'react-router-dom'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './styles.module.css'

const GameInfoPane = ({ className, game }) => (
  <section className={cx(className, styles.pane)}>
    <header className={cx(styles.title, styles.title)}>
      <h1>{game.name}</h1>
      <nav>
        <Link to="/">
          <FontAwesomeIcon icon="home" size="lg" />
        </Link>
      </nav>
    </header>
    <div className={styles.drawBag}>draw_bag</div>
    <div className={styles.drawDeck}>draw_deck</div>
    <div className={styles.discardsBag}>discards_bag</div>
    <div className={styles.discardsDeck}>discards_deck</div>
    <div className={styles.reserveBag}>reserve_bag</div>
  </section>
)

GameInfoPane.propTypes = {
  className: PropTypes.string,
  game: gameShape,
}

export default GameInfoPane
