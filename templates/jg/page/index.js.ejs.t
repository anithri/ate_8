---
  to: <%= pagePath %>
---
import PropTypes from 'prop-types'
import cx from 'classnames'
import { Link } from 'react-router-dom'
import React from 'react'
import styles from <%= cssFile %>

const <%= pageClass %> = ({className}) => {
  return (
    <main className={cx(className, styles.<%= cssSelector %>)}>
      <h2>Component (styled) <%= Name %></h2>
    </main>
  )
}

<%= pageClass %>.propTypes = {
  className: PropTypes.string,
}

export default <%= pageClass %>
