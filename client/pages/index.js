import { Route, BrowserRouter as Router, Switch } from 'react-router-dom'
import Games from 'pages/Games'
import Home from './Home'
import PropTypes from 'prop-types'
import React from 'react'
import Error404 from 'pages/Error404'

/* new imports above here - see templates/jg/pages */

const SiteRouter = props => {
  return (
    <Router>
      <Switch>
        <Route exact path="/" component={Home} />
        <Route exact path="/games" component={Games} />
        {/* page routes above here - see templates/jg/pages */}
        <Route component={Error404} />
      </Switch>
    </Router>
  )
}

SiteRouter.propTypes = {
  className: PropTypes.string.isRequired,
}
export default SiteRouter
