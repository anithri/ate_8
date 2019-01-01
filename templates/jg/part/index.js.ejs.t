---
to: <%= partPath %>
---
import cx from 'classnames'
import PropTypes from 'prop-types'
import React from 'react'
import styles from '<%= cssFile %>'

const <%= partClass %> = ({ className }) => (
  <div className={cx(className, styles.<%= cssSelector %>)}>
    <h2>Component (styled) <%= Name %></h2>
  </div>
)

<%= partClass %>.propTypes = {
  className: PropTypes.string,
}

export default <%= partClass %>

