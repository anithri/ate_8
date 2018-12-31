---
to: <%= h.src('pages', page, `${Name}.js`) %>
---
import cx from 'classnames'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './<%= page %>.module.css'

const <%= page + Name %> = ({className}) => (
  <div className={cx(className, styles.<%= page + Name %>)}>
    <h2>Component (styled) <%= name %></h2>
  </div>
)

<%= page + Name %>.propTypes = {
  className: PropTypes.string,
}

export default <%= page + Name %>
