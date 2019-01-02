import cx from 'classnames'
import { gameShape } from 'concerns/Game/shape'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import grid from './grid.module.css'
import { Link } from 'react-router-dom'
import PropTypes from 'prop-types'
import React from 'react'
import regions from './regions.module.css'
import styles from './styles.module.css'

const GameInfo = ({ className, game }) => (
  <section className={cx(className, grid.info, styles.info)}>
    <header className={cx(regions.title, styles.title)}>
      <h1>{game.name}</h1>
      <nav>
        <Link to="/">
          <FontAwesomeIcon icon="home" size="lg" />
        </Link>
      </nav>
    </header>
    <div className={regions.drawBag}>draw_bag</div>
    <div className={regions.drawDeck}>draw_deck</div>
    <div className={regions.discardsBag}>discards_bag</div>
    <div className={regions.discardsDeck}>discards_deck</div>
    <div className={regions.reserveBag}>reserve_bag</div>
  </section>
)

GameInfo.propTypes = {
  className: PropTypes.string,
  game: gameShape,
}

export default GameInfo
