---
to: <%= simplePath %>
---
import cx from 'classnames'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './pane.module.css'

const <%= paneName %> = ({ className }) => (
  <div className={cx(className, styles.<%= stylesName %>)}>
    <h2>Component (styled) <%= name %></h2>
  </div>
)

<%= paneName %>.propTypes = {
  className: PropTypes.string,
}

export default <%= paneName %>
