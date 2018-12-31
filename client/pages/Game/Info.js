import cx from 'classnames'
import { gameShape } from 'concerns/Game/shape'
import grid from './grid.module.css'
import MainHeader from 'components/MainHeader'
import PropTypes from 'prop-types'
import React from 'react'
import regions from './regions.module.css'
import styles from './game.module.css'

const GameInfo = ({ className, game }) => (
  <div className={cx(className, grid.info, styles.info)}>
    <MainHeader title={game.name} className={regions.title} />
    <div className={regions.drawBag}>draw_bag</div>
    <div className={regions.drawDeck}>draw_deck</div>
    <div className={regions.discardsBag}>discards_bag</div>
    <div className={regions.discardsDeck}>discards_deck</div>
    <div className={regions.reserveBag}>reserve_bag</div>
  </div>
)

GameInfo.propTypes = {
  className: PropTypes.string,
  game: gameShape,
}

export default GameInfo
