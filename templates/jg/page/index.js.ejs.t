---
  to: <%= pagePath %>
---
import PropTypes from 'prop-types'
import cx from 'classnames'
import { Link } from 'react-router-dom'
import React from 'react'
import styles from './page.module.css'

const <%= pageName %> = ({className}) => {
  return (
    <main className={cx(className, styles.page)}>
      <header>
        <h1><%= Name %> Page</h1>
      </header>
      <nav className='centeringFlex'>
      <ul>
        <li><Link to='/'>Home</Link></li>
      </ul>
      </nav>
    </main>
  )
}

<%= pageName %>.propTypes = {
  className: PropTypes.string,
}

export default <%= pageName %>
