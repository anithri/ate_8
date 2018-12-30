---
  to: <%= h.src('pages', Name, 'index.js') %>
---
import PropTypes from 'prop-types'
import cx from 'classnames'
import { Link } from 'react-router-dom'
import React from 'react'
import styles from './<%= Name %>.module.css'

class <%= Name %>Page extends React.Component {
  render() {
    const { children, className } = this.props
    return (
      <main className={cx(className, styles.<%= name %>Page)}>
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
}

<%= Name %>Page.propTypes = {
  children: PropTypes.node,
  className: PropTypes.string,
}

export default <%= Name %>Page
