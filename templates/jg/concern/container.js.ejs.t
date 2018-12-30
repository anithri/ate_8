---
to: <%= h.src('concerns', className, 'container.js') %>
---
import { <%= queryName %> } from './query'
import normalizeData from './utils'
import PropTypes from 'prop-types'
import { Query } from 'react-apollo'
import React from 'react'

const <%= className %>Container = ({ className, display: <%= className %>Display }) => (
  <Query query={<%= queryName %>}>
    {({ loading, error, data }) => {
      if (loading) return <div>Loading...</div>
      if (error) return <div>Error!</div>

      const <%= dataName %>Data = normalizeData(data.<%= dataName %>)
      return <<%= className %>Display <%= dataName %>={<%= dataName %>Data} className={className} />
    }}
  </Query>
)

<%=className%>Container.propTypes = {
  className: PropTypes.string,
  display: PropTypes.func.isRequired,
}

export default <%= className %>Container
