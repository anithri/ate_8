---
to: <%= partPath %>
---
import cx from 'classnames'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './<%= partType %>.module.css'

const <%= partName %> = ({ className }) => (
  <div className={cx(className, styles.<%= styleName %>)}>
    <h2>Component (styled) <%= name %></h2>
  </div>
)

<%= partName %>.propTypes = {
  className: PropTypes.string,
}

export default <%= partName %>
