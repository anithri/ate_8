import cx from 'classnames'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './PageHeader.module.css'
import {FontAwesomeIcon as FaIcon} from '@fortawesome/react-fontawesome'

const PageHeader = ({className}) => (
    <header className={cx(className, styles.PageHeader)}>
      <section className={styles.logo}>
        <h1>
          CPP
        </h1>
        <FaIcon icon="home" />
      </section>
      <nav className={styles.nav}>
        <ul>
          <li>
            Headwind
            <FaIcon icon={["far", "chevron-double-right"]} />

          </li>
          <li>
            <FaIcon icon={["far", "chevron-double-left"]} />
            Tunnels
          </li>
        </ul>
      </nav>
      <figure className={styles.user}>
        <img src="https://via.placeholder.com/32" className="br-100 pa1 ba b--black-10 h2 w2"/>
        <figcaption>Scott</figcaption>
      </figure>
    </header>
)

PageHeader.propTypes = {
  className: PropTypes.string,
}

export default PageHeader
