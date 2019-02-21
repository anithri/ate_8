import cx from 'classnames'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import { gameShape } from 'concerns/game'
import { Link } from 'react-router-dom'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './styles.module.css'

const Title = ({ className, game: { name, round, turn } }) => (
  <header className={cx(className, styles.title)}>
    <nav>
      <Link to="/">
        <FontAwesomeIcon icon="home" size="lg" />
      </Link>
    </nav>
    <h1>{name}</h1>
    <figure>Turn: {turn}</figure>
    <figure>Round: {round}</figure>
  </header>
)

Title.propTypes = {
  className: PropTypes.string,
  game: gameShape,
}

export default Title
