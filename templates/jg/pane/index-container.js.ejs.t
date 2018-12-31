---
to: <%= panePath %>
---
import cx from 'classnames'
import PropTypes from 'prop-types'
import React from 'react'
import styles from './pane.module.css'
import { <%= shapeName %> } from '<%= shapePath %>'
import <%= containerName %> from '<%= containerPath %>'

const <%= paneName %> = ({ className, <%= contained %> }) => (
  <div className={cx(className, styles.<%= stylesName %>)}>
    <h2>Component (styled) <%= name %></h2>
  </div>
)

<%= paneName %>.propTypes = {
  className: PropTypes.string,
  <%= contained %>: <%= shapeName %>,
}

export default <%= containerName %>(<%= paneName %>)
